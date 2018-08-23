# ----------------------------------------------------------------------------
# Title      : parseNetParams
# Project    : Haddoc2
# ----------------------------------------------------------------------------
# File       : parseNetParams.py
# Author     : K. Abdelouahab
# Company    : Institut Pascal
# Created    : 26-10-2016
# Last update: 30-07-2018
# ----------------------------------------------------------------------------
# Description: Library of functions used in parseNetParams file
# ----------------------------------------------------------------------------

import sys
import os
import numpy as np
import math
import time


######################################################################
def write_in_size(layer_name, value, target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_IN_SIZE      :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################


def write_out_size(layer_name, value, target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_OUT_SIZE     :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################


def write_kernel_size(layer_name, value, target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_SIZE  :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################


def write_image_width(layer_name, value, target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_IMAGE_WIDTH  :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################


def to_shiftNorm(kernel):
    ### DEPRECATED ###
    norm = np.abs(np.sum(kernel[...]))
    real_shift = math.log(norm, 2)
    int_shift = int(real_shift)
    return int_shift + 1
######################################################################


def to_fixedPoint(data, scale_factor):
    scaled_data = scale_factor * data
    return np.array(np.round(scaled_data), dtype=int)
######################################################################


def to_scaleFactor(nbits):
    return math.pow(2, (nbits - 1)) - 1
######################################################################


def write_bias_value(data, name, nbits, target):
    layer_name = name
    bias_data = data

    scale_factor = to_scaleFactor(nbits)
    out_size = bias_data.shape[0]

    target.write("constant ")
    target.write(layer_name)
    target.write("_BIAS_VALUE   :  pixel_array ")
    target.write("   (0 to " + layer_name + "_OUT_SIZE - 1 ) := \n")
    bias_fp = to_fixedPoint(bias_data, scale_factor)

    target.write(" (")
    for n in range(out_size):
        bias_bin = np.binary_repr(bias_fp[n], width=nbits)
        target.write("\"" + bias_bin + "\"")
        if (n == out_size - 1):
            target.write(");\n")
        else:
            target.write(",")
######################################################################


def write_kernel_value(kernel_data, layer_name, nbits, target):
    #kernel_data  = data

    scale_factor = to_scaleFactor(nbits)
    out_size = kernel_data.shape[0]
    in_size = kernel_data.shape[1]
    kernel_size = kernel_data.shape[2]

    # constant CONV1_KERNEL_VALUE : pixel_matrix
    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_VALUE :  pixel_matrix ")
    # (0 to CONV1_LAYER_SIZE * CONV1_LAYER_SIZE - 1, 0 to CONV1_KERNEL_SIZE*CONV1_KERNEL_SIZE - 1) :=
    target.write(" (0 to " + layer_name + "_OUT_SIZE - 1 ,")
    target.write("  0 to " + layer_name + "_IN_SIZE * " + layer_name +
                 "_KERNEL_SIZE * " + layer_name + "_KERNEL_SIZE - 1)")
    target.write(" :=\n")

    kernel_fp = to_fixedPoint(kernel_data, scale_factor)
    target.write(" (")

    # In some Networks, such AlexNet, neurons from layer l are not totally connected to layer l+1
    # But only a group is connected. We manage this as follows:
    target.write(" (")
    for n in range(out_size):
        for m in range(in_size):
            for i in range(kernel_size - 1, -1, -1):
                for j in range(kernel_size - 1, -1, -1):
                    if (kernel_fp[n][m][i][j] > scale_factor):
                        kernel_fp[n][m][i][j] = scale_factor
                    if (kernel_fp[n][m][i][j] < -scale_factor):
                        kernel_fp[n][m][i][j] = -scale_factor
                    kernel_bin = np.binary_repr(
                        kernel_fp[n][m][i][j], width=nbits)
                    target.write("\"" + kernel_bin + "\"")
                    if (m != in_size - 1 or i != 0 or j != 0):
                        target.write(",")
            if (m == in_size - 1):
                if (n != out_size - 1):
                    target.write("),\n (")
                else:
                    target.write(")")
    target.write("\n);\n")

    # n = 0;
    # dm = 0;
    # # while (n<out_size):
    # for n in range(out_size):
    #     m = 0;
    #     target.write("-- Neuron : %d \n" %n)
    #     while (m < previous_layer_size):
    #         # if ((n<=out_size/2 and m>=in_size)):
    #         if ((n<=out_size/2 and m>=in_size) or (n>out_size/2 and m<=in_size)):
    #             #target.write("-- Group : We put some zeros here : %d \n" %m)
    #             if (n>out_size/2):
    #                 dm = in_size-m;
    #             else:
    #                 dm = m;
    #                 end = ",\n"
    #             target.write("  (others =>(others=> \'0\'))" + end)
    #
    #         else:
    #             if (n>out_size/2):
    #                 dm = in_size-m;
    #             else:
    #                 dm = m;
    #             # print str(n) + " " + str(m)
    #             target.write("  (")
    #             for i in range(kernel_size-1,-1,-1):
    #                 for j in range(kernel_size-1,-1,-1):
    #                     if (kernel_fp[n][dm][i][j] > scale_factor):
    #                         kernel_fp[n][dm][i][j] = scale_factor;
    #                     if (kernel_fp[n][dm][i][j] < -scale_factor):
    #                         kernel_fp[n][dm][i][j] = -scale_factor;
    #                     kernel_bin = np.binary_repr(kernel_fp[n][dm][i][j] , width=nbits)
    #                     target.write ("\"" + kernel_bin + "\"")
    #                     if ((i == 0) and (j == 0) ):
    #                         if ((n == out_size - 1) and (m == previous_layer_size - 1) ):
    #                             target.write (")\n")
    #                         else:
    #                             target.write("),\n")
    #                     else:
    #                         target.write(",")
    #         m = m+1;

    # target.write(" );\n")

######################################################################


def parse_convLayer(target, cnn, layer_name, previous_layer_name, nbits):
    kernel_data = cnn.params[layer_name][0].data
    in_size = cnn.params[layer_name][0].data.shape[1]
    out_size = cnn.blobs[layer_name].data.shape[1]
    previous_layer_size = cnn.blobs[previous_layer_name].data.shape[1]
    kernel_size = cnn.params[layer_name][0].data.shape[2]
    image_width = cnn.blobs[previous_layer_name].data.shape[2]
    bias_data = np.zeros(out_size, dtype=float)
    try:
        bias_data = cnn.params[layer_name][1].data
    except (IndexError):
        bias_data = np.zeros(out_size, dtype=float)
    except (NameError):
        bias_data = np.zeros(out_size, dtype=float)
    ## Write layer params ##
    target.write("--" + layer_name + "\n")
    write_image_width(layer_name, image_width, target)
    write_in_size(layer_name, previous_layer_size, target)
    write_out_size(layer_name, out_size, target)
    write_kernel_size(layer_name, kernel_size, target)
    write_bias_value(bias_data, layer_name, nbits, target)
    write_kernel_value(kernel_data, layer_name, nbits, target)
    target.write("----------------------------------------------------------")
    target.write("--------------------------------------------------------\n")
######################################################################


def parse_poolLayer(target, cnn, layer_name, previous_layer_name):
    kernel_size = 2  # For now only a subsampling factor of 4 is supported
    out_size = cnn.blobs[layer_name].data.shape[1]
    image_width = cnn.blobs[previous_layer_name].data.shape[2]
    target.write("--" + layer_name + "\n")
    write_image_width(layer_name, image_width, target)
    write_out_size(layer_name, out_size, target)
    write_kernel_size(layer_name, kernel_size, target)
    target.write("----------------------------------------------------------")
    target.write("--------------------------------------------------------\n")
######################################################################


def write_fileHead(target):
    target.write("--------------------------------------------------------\n")
    target.write("-- This file is generated with Haddoc2 utility \n")
    target.write("-- Generated on : " + time.ctime() + "\n")
    target.write(
        "--------------------------------------------------------\n\n")
    target.write("library ieee;\n")
    target.write("    use    ieee.std_logic_1164.all;\n")
    target.write("library work;\n")
    target.write("    use    work.cnn_types.all;\n")
    target.write("package params is\n")
######################################################################


def write_pixelWidth(target, pixelWidth):
    target.write("constant PIXEL_CONST    : integer :=" +
                 str(pixelWidth) + ";\n")
######################################################################


def write_fileEnd(target):
    target.write("end package;")
######################################################################
