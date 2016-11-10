import sys
import os
import numpy as np
import math
import time

if __name__ == "__main__":

    HOME                = os.environ['HOME']
    CAFFE_DIRNAME       = HOME + '/caffe'
    CAFFE_PYTHON_LIB    = CAFFE_DIRNAME+'/python'
    sys.path.insert(0, CAFFE_PYTHON_LIB)
    import caffe;

    filename = "../example/cnn/hdl/params.vhd"

    cnn   = caffe.Net('network/test.prototxt','network/network.caffemodel',caffe.TEST)

    cnn.forward()
    conv1 = cnn.blobs['conv1'].data
    s1    = cnn.blobs['s1'].data
    conv2 = cnn.blobs['conv2'].data
    s2    = cnn.blobs['s2'].data
    conv3 = cnn.blobs['conv3'].data
    fc    = cnn.blobs['fc'].data

    print "Max value on layer conv1 = " + str (np.max(conv1))
    print "Max value on layer s1 = "    + str (np.max(s1))
    print "Max value on layer conv2 = " + str (np.max(conv2))
    print "Max value on layer s2 = "    + str (np.max(s2))
    print "Max value on layer conv3 = " + str (np.max(conv3))
    print "Max value on layer fc    = " + str (np.max(fc))

    w_conv1 = cnn.params['conv1'][0].data
    w_conv2 = cnn.params['conv2'][0].data
    w_conv3 = cnn.params['conv3'][0].data
    w_fc    = cnn.params['fc'][0].data

    print "Max value on weights of conv1 = " + str (np.max(w_conv1))
    print "Max value on weights of conv2 = " + str (np.max(w_conv2))
    print "Max value on weights of conv3 = " + str (np.max(w_conv3))
    print "Max value on weights of fc    = " + str (np.max(w_fc))
