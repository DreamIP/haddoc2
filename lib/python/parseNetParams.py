# ----------------------------------------------------------------------------
# Title      : parseNetParams
# Project    : Haddoc2
# ----------------------------------------------------------------------------
# File       : parseNetParams.py
# Author     : K. Abdelouahab
# Company    : Institut Pascal
# Last update: 30-07-2017
# ----------------------------------------------------------------------------
# Description: Extract params from a Caffe model, generates a vhdl configration
# file with the learned kernels quantized and definded as VHDL
# constants
# ----------------------------------------------------------------------------
import sys
import os
import io
import numpy as np
import math
import time


# Import parseLayer libary
from parseLayerParams import *

# Import caffe : defined in CAFFE_ROOT environment variable
CAFFE_ROOT = os.environ['CAFFE_ROOT']
CAFFE_PYTHON_LIB = CAFFE_ROOT + '/python'
sys.path.insert(0, CAFFE_PYTHON_LIB)
os.environ['GLOG_minloglevel'] = '2'  # Supresses Display on console
import caffe


def main(vhdFile, protoFile, modelFile, pixel_width):
    # Opens Caffe Model
    cnn = caffe.Net(protoFile, modelFile, caffe.TEST)
    blobs = cnn.blobs
    with open(vhdFile, 'w') as f:
        # Opens target toplevel vhdl file
        write_fileHead(f)

        # Browse caffe model layer by layer
        for l in cnn._layer_names:
            layer_id = list(cnn._layer_names).index(l)
            layer_type = cnn.layers[layer_id].type
            if (cnn.layers[layer_id].type == 'Input'):
                previous_layer_name = l
            elif (cnn.layers[layer_id].type == 'Convolution'):
                parse_convLayer(target=f,
                                cnn=cnn,
                                layer_name=l,
                                previous_layer_name=previous_layer_name,
                                nbits=pixel_width)
                previous_layer_name = l
            elif (cnn.layers[layer_id].type == 'Pooling'):
                blob = cnn.blobs[l]
                parse_poolLayer(target=f,
                                cnn=cnn,
                                layer_name=l,
                                previous_layer_name=previous_layer_name)
                previous_layer_name = l
        write_fileEnd(f)
        os.environ["GLOG_minloglevel"] = "0"


if __name__ == '__main__':
    main(vhdFile, protoFile, modelFile, pixel_width)
