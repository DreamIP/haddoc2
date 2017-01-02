import sys
import os
import numpy as np
import math
import time

# Import parseLayer libary
from parseLayer import *

# Import caffe : suppose it is on ~/caffe
HOME                = os.environ['HOME']
CAFFE_DIRNAME       = HOME + '/caffe'
CAFFE_PYTHON_LIB    = CAFFE_DIRNAME+'/python'
sys.path.insert(0, CAFFE_PYTHON_LIB)
import caffe;

def main(vhdFile, protoFile, modelFile,pixel_width,image_width):
    cnn   = caffe.Net(protoFile,modelFile,caffe.TEST)
    blobs = cnn.blobs
    for b in blobs.keys():
        if 'label' in b or 'cla' in b or 'data' in b:
            del blobs[b]
    with open (vhdFile,'w') as f:
        write_fileHead(f)
        for b in blobs.keys():
            if 'conv' in b:
                layer = cnn.params[b];
                previousLayer = cnn.params[b];
                parse_convLayer(layer=layer,name=b.upper(),nbits=pixel_width,target=f,image_width=image_width);
                # Manage image size
                image_width = cnn.blobs[b].data.shape[2]
                # To deploy :
                # kernel_size   = layer[0].data.shape[2];
                # # TODO :  stride et padding ...
                # image_width = image_width - kernel_size + 1
            if 'pool' in b:
                blob  = cnn.blobs[b];
                parse_poolLayer(blob=blob,name=b.upper(),target=f,image_width=image_width);
                # TODO :  stride et padding ...
                image_width = cnn.blobs[b].data.shape[2]
                # Deploy
                # kernel_size  = 2; #For now only a subsampling factor of 4 is supported
                # image_width = image_width / kernel_size;
            if 'fc' in b:
                layer = cnn.params[b];
                parse_fcLayer(previous_layer=previousLayer,layer=layer,name=b.upper(),nbits=pixel_width,target=f,image_width=image_width);
                image_width = cnn.blobs[b].data.shape[2]
            else:
                "This shouldnt be displayed anyway"
        write_fileEnd(f)



if __name__ == '__main__':
    print ">> This is Haddoc2 Network Parser utility"
    # Backdoor
    testDir   = HOME + '/Seafile/Kamel/alexNet'
    vhdFile   = testDir + '/params.vhd'
    protoFile = testDir + '/deploy.prototxt'
    modelFile = testDir + '/bvlc_alexnet.caffemodel'
    pixWidth = 8;
    imWidth  = 227;
    main(vhdFile, protoFile, modelFile,pixWidth,imWidth)
