# ----------------------------------------------------------------------------
# Title      : genBitwidths
# Project    : Haddoc2
# ----------------------------------------------------------------------------
# File       : genBitwidths.py
# Author     : K. Abdelouahab
# Company    : Institut Pascal
# Created    : 26-10-2016
# Last update: 07-07-2017
# ----------------------------------------------------------------------------
# Description: A simple script to generate bitwidth.vhd file that defines
# fixed point formats used in haddoc2 generated inference engines
# ----------------------------------------------------------------------------

import sys
import os
import io
import numpy as np
CAFFE_ROOT = os.environ['CAFFE_ROOT']
CAFFE_PYTHON_LIB = CAFFE_ROOT + '/python'
sys.path.insert(0, CAFFE_PYTHON_LIB)
os.environ['GLOG_minloglevel'] = '2'  # Supresses Display on console
import caffe

def main(bitwidth_file, proto_file, model_file, bitwidth):
    cnn = caffe.Net(proto_file, model_file, caffe.TEST)
    for l in cnn._layer_names:
        layer_id = list(cnn._layer_names).index(l)
        layer_type = cnn.layers[layer_id].type
        if (layer_type == 'Input' or layer_type == 'Data'):
            if (cnn.blobs[l].data.shape[1] == 1):       #Monochrome input
                input_bitwidth = 8
            else:
                input_bitwidth = 24
    with open(bitwidth_file, 'w') as f:
        f.write('library ieee;\n')
        f.write('  use ieee.std_logic_1164.all;\n')
        f.write('  use ieee.numeric_std.all;\n')
        f.write('  use ieee.math_real.all;\n')
        f.write('package bitwidths is\n')
        f.write('  constant GENERAL_BITWIDTH      : integer := ' + str(bitwidth) + ';\n')
        f.write('  constant SUM_WIDTH        : integer := 3*GENERAL_BITWIDTH;\n')
        f.write('  constant INPUT_BIT_WIDTH  : integer := ' + str(input_bitwidth) + ';\n')
        f.write('end bitwidths;\n')
