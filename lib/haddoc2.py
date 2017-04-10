import sys
import os
import io
import numpy as np
import math
import time
import contextlib


if __name__ == '__main__':
    # Default config
    cwd      = os.getcwd()
    file_path = os.path.dirname(os.path.realpath(__file__))
    space = ' '         # Not pretty
    green = '\033[92m'
    white = '\033[0m'

    if (len(sys.argv) == 4):
        print green + " >> This is Haddoc2 HLS tool" + white
        pixWidth   = 5;
        protoFile  = sys.argv[1]
        modelFile  = sys.argv[2]
        targetDir  = sys.argv[3]
        paramFile  = targetDir + '/params.vhd'
        topFile    = targetDir + '/cnn_process.vhd'
        os.system("rm -rf " + targetDir)
        os.system("mkdir "  + targetDir)
        os.system("python"   + space + file_path + "/python/parseNet.py" + space + protoFile + space + modelFile + space + paramFile + space + str(pixWidth))
        os.system("ocamlrun" + space + file_path + "/mk_cnn" + space + protoFile + ' -o ' + topFile)
    else:
        print 'Not enought arguments, use: haddoc2 --help'
