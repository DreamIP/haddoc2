##----------------------------------------------------------------------------
## Title      : parseNetParams
## Project    : Haddoc2
##----------------------------------------------------------------------------
## File       : parseNetParams.py
## Author     : K. Abdelouahab
## Company    : Institut Pascal
## Last update: 07-07-2017
##----------------------------------------------------------------------------
## Description: Extract params from a Caffe model, generates a vhdl configration
##              file with the learned kernels quantized and definded as VHDL
##              constants
##----------------------------------------------------------------------------
import sys
import os
import io
import numpy as np
import math
import time


# Import parseLayer libary
from parseLayerParams import *

# Import caffe : defined in CAFFE_ROOT environment variable
CAFFE_ROOT       = os.environ['CAFFE_ROOT']
CAFFE_PYTHON_LIB = CAFFE_ROOT+'/python'
sys.path.insert(0, CAFFE_PYTHON_LIB)
os.environ['GLOG_minloglevel'] = '2' # Supresses Display on console
import caffe;


def main(vhdFile, protoFile, modelFile,pixel_width):
	# Opens Caffe Model
	cnn   = caffe.Net(protoFile,modelFile,caffe.TEST)
	blobs = cnn.blobs
	previousLayer = cnn.params['conv1']
	# Delete label and classification layers
	layer_id = 0;
	for b in list(blobs.keys()):
		if (cnn.layers[layer_id].type == 'SoftmaxWithLoss' or
			cnn.layers[layer_id].type == 'Softmax' or
			cnn.layers[layer_id].type == 'Accuracy'):
			del blobs[b]

	# Generate Toplevel VHDL
	with open (vhdFile,'w') as f:
		# Opens target toplevel vhdl file
		layer_id = 0;
		write_fileHead(f)

		# Browse caffe model layer by layer
		for b in list(blobs.keys()):
			if (cnn.layers[layer_id].type == 'Input'):
				image_width = cnn.blobs[b].data.shape[2]

			if (cnn.layers[layer_id].type == 'Convolution'):
				layer = cnn.params[b];
				parse_convLayer(previous_layer = previousLayer, layer=layer,name=b.upper(),nbits=pixel_width,target=f,image_width=image_width);
				image_width = cnn.blobs[b].data.shape[2]
				previousLayer = cnn.params[b];
				if (cnn.layers[layer_id+1].type == 'ReLU' or cnn.layers[layer_id+1].type == 'TanH'): # If Activation block, shunt
				    layer_id +=1;

			if (cnn.layers[layer_id].type == 'Pooling'):
				
				blob  = cnn.blobs[b];
				parse_poolLayer(blob=blob,name=b.upper(),target=f,image_width=image_width);
				image_width = cnn.blobs[b].data.shape[2]


			if (cnn.layers[layer_id].type == 'InnerProduct'):
				layer = cnn.params[b];
				parse_fcLayer(previous_layer=previousLayer,layer=layer,name=b.upper(),nbits=pixel_width,target=f,image_width=image_width);
				image_width = cnn.blobs[b].data.shape[2]
				layer_id +=1;

			layer_id +=1;
		write_fileEnd(f)
		os.environ["GLOG_minloglevel"] = "0"

if __name__ == '__main__':
	main(vhdFile, protoFile, modelFile,pixel_width)
