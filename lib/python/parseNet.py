import sys
import os
import io
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
    previousLayer = cnn.params['conv1'];
    for b in blobs.keys():
        if 'label' in b or 'cla' in b or 'data' in b:
            del blobs[b]
    with open (vhdFile,'w') as f:
        write_fileHead(f)
        for b in blobs.keys():
            if 'conv' in b:
                layer = cnn.params[b];
                parse_convLayer(previous_layer = previousLayer, layer=layer,name=b.upper(),nbits=pixel_width,target=f,image_width=image_width);
                # Manage image size
                image_width = cnn.blobs[b].data.shape[2]
                # To deploy :
                # kernel_size   = layer[0].data.shape[2];
                # # TODO :  stride et padding ...
                # image_width = image_width - kernel_size + 1
                previousLayer = cnn.params[b];
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
        write_fileEnd(f)

if __name__ == '__main__':
    # Default config
    pixWidth = 8;       # Fixed point representation at 8 bits
    imWidth  = 227;     # Initial Image width at 227 (ImageNet like)
    green = '\033[92m'
    white = '\033[0m'

    if (len(sys.argv) == 2):
        arg = sys.argv[1];
        if (arg =="--help"):
            print "HADDOC2 - Hardware Automated Data-flow Description of CNNs"
            print "Institut Pascal - DREAM - 2017 \n"
            print "parseNet -  Extacts weights from a learned caffemodel and casts them into 8-bits fixed-point VHDL generics" + white
            print "How to use: parseNet [.prototxt] [.caffemodel] [output]"
        else:
            if (arg=="--backdoor"):# Backdoor
                print ">> BACKDOOR : Using AlexNet Model at ~/caffe/models"
                testDir   = HOME + '/Seafile/Kamel/alexNet'
                # vhdFile   = testDir + '/hdl/params.vhd'
                vhdFile   = 'params.vhd'
                protoFile = testDir + '/caffe/deploy.prototxt'
                modelFile = testDir + '/caffe/bvlc_alexnet.caffemodel'
                main(vhdFile, protoFile, modelFile,pixWidth,imWidth)
                print ">> Succefully generated params.vhd"
            else:
                print 'Not enought arguments, use parseNet --help'

    else:
        if (len(sys.argv) == 4):
            print green + " >> Running Haddoc2 Parameter Parser utility" + white
            print( "\033[92m >> Fixed point representation size set at %d bits\033[0m" %pixWidth)
            protoFile = sys.argv[1]
            modelFile = sys.argv[2]
            vhdFile   = sys.argv[3]
            main(vhdFile, protoFile, modelFile,pixWidth,imWidth)
            # NOTE : This is a temporary bug fix. Sorry :(
            # debug_mux(vhdFile)
            print( "\033[92mSuccefully generated params file at %s" %vhdFile)
        else:
            if (len(sys.argv) == 3):
                protoFile = sys.argv[1]
                modelFile = sys.argv[2]
                vhdFile = "params.vhd"
                main(vhdFile, protoFile, modelFile,pixWidth,imWidth)

            else:
                print 'Not enought arguments, use: parseNet --help'
