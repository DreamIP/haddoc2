#!/usr/bin/env python3
# -*- coding: UTF-8 -*-

# ----------------------------------------------------------------------------
# Title      : haddoc2
# Project    : Haddoc2
# ----------------------------------------------------------------------------
# File       : haddoc2.py
# Author     : K. Abdelouahab
# Company    : Institut Pascal
# Last update: 07-07-2017
# ----------------------------------------------------------------------------
# Description: Main python script of the Haddoc2 tool:
# - Run the parseNetParams to generate VHDL configuration file
# - Run the genBitwidths to define fixed point format during inference
# - Run parseNetTopology to generate the toplevel VHDL file
# Technical details can be found in the technical report submitted here:
# https://arxiv.org/abs/1705.04543
# ----------------------------------------------------------------------------


import sys
import os
import io
import numpy as np
import math
import time
import contextlib
import argparse

HADDOC2_ROOT = os.environ['HADDOC2_ROOT']
HADDOC2_LIB = HADDOC2_ROOT + '/lib/python'
sys.path.insert(0, HADDOC2_LIB)
import parseNetParams
import parseNetTopology
import genBitwidths

green = '\033[92m'
white = '\033[0m'
red = '\033[91m'


def main(protoFile, modelFile, targetDir, bitWidth):
    paramFile = targetDir + '/params.vhd'      # Configuration VHDL output
    topFile = targetDir + '/cnn_process.vhd'  # Top level VHDL output
    bitwidthFile = targetDir + '/bitwidths.vhd'   # Bitwidth  VHDL output

    if not os.path.exists(targetDir):
        os.makedirs(targetDir)
    print("Haddoc2 VHDL Genrator:")
    print("\tprototxt: " + protoFile)
    print("\tcaffe model: " + modelFile)
    print("\tbit width : " + str(bitWidth))
    print("\tvhdl top-level: " + topFile)
    print("\tvhdl parameters: " + paramFile)

    # Generate config vhdl output
    parseNetParams.main(paramFile, protoFile, modelFile, bitWidth)
    genBitwidths.main(bitwidthFile, protoFile, modelFile, bitWidth)

    # Generate toplevel vhdl output
    parseNetTopology.main(topFile, protoFile, modelFile)
    print("Succefully generated VHDL files")


if __name__ == '__main__':
    # Default config
    defaultTargetDir = "./hdl_generated"
    defaultBitWidth = 8

    parser = argparse.ArgumentParser(
        description='Hardware Automated DataFlow Deployment of CNNs.')
    parser.add_argument('--proto',  dest='proto')
    parser.add_argument('--model',  dest='model')
    parser.add_argument('--out  ',  dest='out', default=defaultTargetDir)
    parser.add_argument('--nbits',  dest='nbits',
                        default=defaultBitWidth, type=int)

    args = parser.parse_args()
    if (args.proto is None):
        sys.exit(
            red + "No caffe prototxt defined, please refer to haddoc2 --help" + white)
    if (args.model is None):
        sys.exit(
            red + "No caffe model defined, please refer to haddoc2 --help" + white)

    protoFile = args.proto
    modelFile = args.model
    targetDir = args.out
    bitWidth = args.nbits
    main(protoFile, modelFile, targetDir, bitWidth)
