# coding: utf8
import os
import sys
import subprocess
from scipy.misc import *

import matplotlib.pyplot as plt
import numpy as np

HOME        = os.environ['HOME']
CAFFE_PATH  = HOME + '/caffe'
sys.path.insert(0, CAFFE_PATH +'/python')
import caffe

#  Read network
model   = '../../caffe/network/debug.prototxt'
weights = '../../caffe/network/network.caffemodel'
caffe.set_mode_cpu();
net = caffe.Net(model,weights,caffe.TEST)

# Read sample and prepare it to be be loaded in caffe
image   = imread('./sample.bmp',mode='L');
in_data = np.array(image,dtype=float)
in_data = np.reshape(in_data,[1,1,320,320])

# Forward propagation of sample.bmp
c0 = net.forward_all(data = in_data)

# Read output
c00 = np.array(c0['conv1'][0][0])
c01 = np.array(c0['conv1'][0][1])
c02 = np.array(c0['conv1'][0][2])

# Normalize image in order to be compared later
c00_sw = c00 / np.max(c00);
c01_sw = c01 / np.max(c01);
c02_sw = c02 / np.max(c02);

# Read hardware results
c00_hw   = imread('./c00.bmp',mode='L');
c01_hw   = imread('./c01.bmp',mode='L');
c02_hw   = imread('./c02.bmp',mode='L');

# Normalize
c00_hw   = np.array(c00_hw,dtype = float);
c01_hw   = np.array(c01_hw,dtype = float);
c02_hw   = np.array(c02_hw,dtype = float);

c00_hw   = np.reshape(c00_hw,[318,318]);
c01_hw   = np.reshape(c01_hw,[318,318]);
c02_hw   = np.reshape(c02_hw,[318,318]);

c00_hw = c00_hw / np.max(c00_hw);
c01_hw = c01_hw / np.max(c01_hw);
c02_hw = c02_hw / np.max(c02_hw);

d00   = np.mean(np.abs(c01_hw - c02_sw))
d01   = np.mean(np.abs(c00_hw - c01_sw))
d02   = np.mean(np.abs(c02_hw - c00_sw))

print "d00 = " + str(d00)
print "d01 = " + str(d01)
print "d02 = " + str(d02)
