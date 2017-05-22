# -*- coding: UTF-8 -*-

import sys
import os
import io
import numpy as np
import math
import time
import contextlib
import argparse

HADDOC2_ROOT = os.environ['HADDOC2_ROOT']
HADDOC2_LIB  = HADDOC2_ROOT + '/lib/python'
sys.path.insert(0, HADDOC2_LIB)
import parseNetParams

green = '\033[92m'
white = '\033[0m'
red   = '\033[91m'
def main(protoFile,modelFile,targetDir,bitWidth):
    paramFile     = targetDir + '/params.vhd'      # Configuration VHDL output
    topFile       = targetDir + '/cnn_process.vhd' # Top level VHDL output

    if not os.path.exists(targetDir):
        os.makedirs(targetDir)

    # Generate config vhdl output
    parseNetParams.main(paramFile, protoFile, modelFile, bitWidth)

    # Generate toplevel vhdl output
    # TODO: Replace with python version : parseNetTopology.py
    print green
    parseNetTopology = "ocamlrun " +  HADDOC2_ROOT + "/lib/mk_cnn " +  protoFile + ' -o ' + topFile
    os.system(parseNetTopology)
    print white

if __name__ == '__main__':
    # Default config
    defaultTargetDir = "./hdl_generated"
    defaultBitWidth  = 8

    parser = argparse.ArgumentParser(description='Hardware Automated DataFlow Deployment of CNNs.')
    parser.add_argument('--proto',  dest='proto')
    parser.add_argument('--model',  dest='model')
    parser.add_argument('--out  ',  dest='out'  ,default=defaultTargetDir)
    parser.add_argument('--nbits',  dest='nbits',default=defaultBitWidth,type=int)

    args = parser.parse_args()
    if (args.proto is None):
        sys.exit(red + "No caffe prototxt defined, please refer to haddoc2 --help" + white)
    if (args.model is None):
        sys.exit(red + "No caffe model defined, please refer to haddoc2 --help" + white)

    protoFile = args.proto
    modelFile = args.model
    targetDir = args.out
    bitWidth  = args.nbits

    green = '\033[92m'
    white = '\033[0m'
    print green + "Haddoc2 CNN parameter parser:"
    print "\tprototxt: " + protoFile
    print "\tcaffe model: " + modelFile
    print "\tvhdl out: " + targetDir
    print "\tbit width : "  + str(bitWidth)
    print white

    main(protoFile,modelFile,targetDir,bitWidth)
    #
    # if (len(sys.argv) == 4):
    #     print green + " >> This is Haddoc2 HLS tool" + white
    #     pixWidth   = 8;
    #     protoFile  = sys.argv[1]
    #     modelFile  = sys.argv[2]
    #     targetDir  = sys.argv[3]
    #     paramFile  = targetDir + '/params.vhd'
    #     topFile    = targetDir + '/cnn_process.vhd'
    #     os.system("rm -rf " + targetDir)
    #     os.system("mkdir "  + targetDir)
    #     os.system("python"   + space + file_path + "/python/parseNet.py" + space + protoFile + space + modelFile + space + paramFile + space + str(pixWidth))
    #     os.system("ocamlrun" + space + file_path + "/mk_cnn" + space + protoFile + ' -o ' + topFile)
    # else:
    #     print 'Not enought arguments, use: haddoc2 --help'
