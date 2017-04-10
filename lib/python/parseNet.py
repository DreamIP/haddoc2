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
os.environ['GLOG_minloglevel'] = '2'
import caffe;


def main(vhdFile, protoFile, modelFile,pixel_width):
    cnn   = caffe.Net(protoFile,modelFile,caffe.TEST)
    blobs = cnn.blobs
    previousLayer = cnn.params['conv1'];
    for b in blobs.keys():
        if 'label' in b or 'cla' in b:
            del blobs[b]
    with open (vhdFile,'w') as f:
        write_fileHead(f)
        for b in blobs.keys():
            if 'data' in b:
                image_width = cnn.blobs[b].data.shape[2]
            if 'conv' in b:
                layer = cnn.params[b];
                parse_convLayer(previous_layer = previousLayer, layer=layer,name=b.upper(),nbits=pixel_width,target=f,image_width=image_width);
                image_width = cnn.blobs[b].data.shape[2]
                previousLayer = cnn.params[b];
            if 'pool' or 'out'in b:
                blob  = cnn.blobs[b];
                parse_poolLayer(blob=blob,name=b.upper(),target=f,image_width=image_width);
                image_width = cnn.blobs[b].data.shape[2]
            if 'fc' in b:
                layer = cnn.params[b];
                parse_fcLayer(previous_layer=previousLayer,layer=layer,name=b.upper(),nbits=pixel_width,target=f,image_width=image_width);
                image_width = cnn.blobs[b].data.shape[2]
        write_fileEnd(f)
        os.environ["GLOG_minloglevel"] = "0"

if __name__ == '__main__':

    green = '\033[92m'
    white = '\033[0m'

    if (len(sys.argv) == 2):
        arg = sys.argv[1];
        if (arg =="--help"):
            print "HADDOC2 - Hardware Automated Data-flow Description of CNNs"
            print "Institut Pascal - DREAM - 2017 \n"
            print "How to use: parseNet [.prototxt] [.caffemodel] [output]"
        else:
            print 'Not enought arguments, use parseNet --help'

    else:
        if (len(sys.argv) == 5):
            # Default config
            #pixWidth = 8;       # Fixed point representation at 8 bits
            print green + " >> Running Haddoc2 Parameter Parser utility" + white
            protoFile = sys.argv[1]
            modelFile = sys.argv[2]
            vhdFile   = sys.argv[3]
            pixWidth  = int(sys.argv[4])
            print( "\033[92m >> Fixed point representation size set at %d bits\033[0m" %pixWidth)
            main(vhdFile, protoFile, modelFile,pixWidth)
            print( "\033[92mSuccefully generated params file at %s" %vhdFile)
        else:
            if (len(sys.argv) == 3):
                protoFile = sys.argv[1]
                modelFile = sys.argv[2]
                vhdFile = "params.vhd"
                main(vhdFile, protoFile, modelFile,pixWidth)

            else:
                print 'Not enought arguments, use: parseNet --help'
