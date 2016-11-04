import sys
import os
import numpy as np
import math
import time

def to_shiftNorm(kernel):
    norm  = np.sum(kernel);
    if (norm == 0):
        return int(0);
    else:
        real_shift = math.log(np.abs(norm),2);
        int_shift  = int(real_shift);
        return int_shift;
        # When using the first option, overflow may occur. If so, uncomment this:
        # if (real_shift == int_shift):
        #     return int_shift;
        # else:
        #     return int_shift + 1;
######################################################################
def write_in_size (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_IN_SIZE      :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################
def write_out_size (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_OUT_SIZE     :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################
def write_kernel_size (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_SIZE  :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################
def write_image_width (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_IMAGE_WIDTH  :  integer := ")
    target.write(str(value) + " ;\n")
######################################################################
def to_fixedPoint (data,scale_factor):
    scaled_data = scale_factor * data
    return np.array(np.round(scaled_data),dtype=int)
######################################################################
def to_scaleFactor(nbits):
    return math.pow(2,(nbits - 1)) - 1
######################################################################
def write_bias_value (layer,name,nbits,target):
    layer_name   = name;
    bias_data    = layer[1].data

    scale_factor = to_scaleFactor(nbits)
    out_size     = bias_data.shape[0]

    target.write("constant ")
    target.write(layer_name)
    target.write("_BIAS_VALUE   :  pixel_array ")
    target.write("   (0 to " + layer_name + "_OUT_SIZE - 1 ) := \n")
    bias_fp      = to_fixedPoint(bias_data,scale_factor)

    target.write(" (")
    for n in range(out_size):
        bias_bin = np.binary_repr(bias_fp[n], width=nbits)
        target.write ("\"" + bias_bin + "\"")
        if (n == out_size - 1):
            target.write (");\n")
        else:
            target.write(",")
######################################################################
def write_kernel_value (layer,name,nbits,target):

    layer_name   = name;
    kernel_data  = layer[0].data

    scale_factor = to_scaleFactor(nbits)
    out_size     = kernel_data.shape[0]
    in_size      = kernel_data.shape[1]
    kernel_size  = kernel_data.shape[2]

    # constant CONV1_KERNEL_VALUE : pixel_matrix
    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_VALUE :  pixel_matrix ")
    # (0 to CONV1_LAYER_SIZE * CONV1_LAYER_SIZE - 1, 0 to CONV1_KERNEL_SIZE*CONV1_KERNEL_SIZE - 1) :=
    target.write(" (0 to " + layer_name + "_IN_SIZE * " + layer_name + "_OUT_SIZE - 1 ,")
    target.write("  0 to " + layer_name + "_KERNEL_SIZE * "+ layer_name + "_KERNEL_SIZE - 1)")
    target.write(" :=\n")

    kernel_fp    = to_fixedPoint(kernel_data,scale_factor)

    target.write(" (")
    for n in range(out_size):
        for m in range (in_size):
            target.write("(")
            for i in range(kernel_size):
                for j in range(kernel_size):
                    kernel_bin = np.binary_repr(kernel_fp[n][m][i][j] , width=nbits)
                    target.write ("\"" + kernel_bin + "\"")
                    if ((i == kernel_size - 1) and (j == kernel_size -1) ):
                        if ((n == out_size - 1) and (m == in_size - 1) ):
                            target.write (")\n")
                        else:
                            target.write("),\n  ")
                    else:
                        target.write(",")
    target.write(" );\n")
######################################################################
def write_kernel_norm (layer,name,nbits,target):
    layer_name   = name;
    kernel_data  = layer[0].data

    scale_factor = to_scaleFactor(nbits)
    out_size     = kernel_data.shape[0]
    in_size      = kernel_data.shape[1]
    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_NORM  :  pixel_array ")
    target.write("   (0 to " + layer_name + "_IN_SIZE * "+ layer_name + "_OUT_SIZE - 1 ) := \n")

    kernel_fp    = to_fixedPoint(kernel_data,scale_factor)
    target.write(" (")
    for n in range(out_size):
        for m in range (in_size):
            shift_norm = to_shiftNorm(kernel_fp[n][m]);
            shift_norm_bin = np.binary_repr(shift_norm , width=nbits);
            target.write ("\"" + shift_norm_bin + "\"")
            if ((n == out_size - 1) and (m == in_size - 1) ):
                target.write (");\n")
            else:
                target.write(",")

######################################################################
def write_fc_kernel_value (previous_layer,layer,name,nbits,target):
    layer_name   = name;
    kernel_data  = layer[0].data
    out_size     = kernel_data.shape[0]
    in_size      = previous_layer[0].data.shape[0]
    kernel_size  = int(math.sqrt(kernel_data.shape[1]/in_size))
    kernel_data  = np.reshape(kernel_data,(out_size,in_size,kernel_size,kernel_size))
    scale_factor = to_scaleFactor(nbits)

    # constant CONV1_KERNEL_VALUE : pixel_matrix
    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_VALUE :  pixel_matrix ")
    # (0 to CONV1_LAYER_SIZE * CONV1_LAYER_SIZE - 1, 0 to CONV1_KERNEL_SIZE*CONV1_KERNEL_SIZE - 1) :=
    target.write(" (0 to " + layer_name + "_IN_SIZE * " + layer_name + "_OUT_SIZE - 1 ,")
    target.write("  0 to " + layer_name + "_KERNEL_SIZE * "+ layer_name + "_KERNEL_SIZE - 1)")
    target.write(" :=\n")

    kernel_fp    = to_fixedPoint(kernel_data,scale_factor)

    target.write(" (")
    for n in range(out_size):
        for m in range (in_size):
            target.write("(")
            for i in range(kernel_size):
                for j in range(kernel_size):
                    kernel_bin = np.binary_repr(kernel_fp[n][m][i][j] , width=nbits)
                    target.write ("\"" + kernel_bin + "\"")
                    if ((i == kernel_size - 1) and (j == kernel_size -1) ):
                        if ((n == out_size - 1) and (m == in_size - 1) ):
                            target.write (")\n")
                        else:
                            target.write("),\n  ")
                    else:
                        target.write(",")
    target.write(" );\n")
######################################################################
def write_fc_kernel_norm (previous_layer,layer,name,nbits,target):
    layer_name   = name;
    kernel_data  = layer[0].data
    out_size     = kernel_data.shape[0]
    in_size      = previous_layer[0].data.shape[0]
    kernel_size  = int(math.sqrt(kernel_data.shape[1]/in_size))
    kernel_data  = np.reshape(kernel_data,(out_size,in_size,kernel_size,kernel_size))
    scale_factor = to_scaleFactor(nbits)

    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_NORM  :  pixel_array ")
    target.write("   (0 to " + layer_name + "_IN_SIZE * "+ layer_name + "_OUT_SIZE - 1 ) := \n")

    kernel_fp    = to_fixedPoint(kernel_data,scale_factor)
    target.write(" (")
    for n in range(out_size):
        for m in range (in_size):
            shift_norm = to_shiftNorm(kernel_fp[n][m]);
            shift_norm_bin = np.binary_repr(shift_norm , width=nbits);
            target.write ("\"" + shift_norm_bin + "\"")
            if ((n == out_size - 1) and (m == in_size - 1) ):
                target.write (");\n")
            else:
                target.write(",")
######################################################################
def parse_convLayer (layer,name,nbits,target,image_width):
    layer_name   = name;
    kernel_data  = layer[0].data
    out_size     = kernel_data.shape[0]
    in_size      = kernel_data.shape[1]
    kernel_size  = kernel_data.shape[2]
    ## Write layer params ##
    target.write("--" + layer_name + "\n")
    write_image_width (layer_name,image_width,target);
    write_in_size (layer_name,in_size,target);
    write_out_size (layer_name,out_size,target);
    write_kernel_size (layer_name,kernel_size,target);
    write_bias_value (layer,name,nbits,target);
    write_kernel_norm (layer,name,nbits,target);
    write_kernel_value (layer,name,nbits,target);
    target.write("----------------------------------------------------------")
    target.write("--------------------------------------------------------\n")
######################################################################
def parse_poolLayer(blob,name,target,image_width):
    layer_name   = name;
    kernel_size  = 2; #For now only a subsampling factor of 4 is supported
    out_size     = blob.data.shape[1];
    target.write("--" + layer_name + "\n")
    write_image_width (layer_name,image_width,target);
    write_out_size (layer_name,out_size,target);
    write_kernel_size (layer_name,kernel_size,target);
    target.write("----------------------------------------------------------")
    target.write("--------------------------------------------------------\n")
######################################################################
def parse_fcLayer(previous_layer,layer,name,nbits,target,image_width):
    layer_name   = name;
    kernel_data  = layer[0].data
    out_size     = kernel_data.shape[0]
    # Number of in features is the number of out features of previous layers
    in_size      = previous_layer[0].data.shape[0]
    # HACK: if everything goes right, we can compute kernel size of FC as follows:
    kernel_size  = int(math.sqrt(kernel_data.shape[1]/in_size))
    ## Write layer params ##
    target.write("--" + layer_name + "\n")
    write_image_width (layer_name,image_width,target);
    write_in_size (layer_name,in_size,target);
    write_out_size (layer_name,out_size,target);
    write_kernel_size (layer_name,kernel_size,target);
    write_bias_value (layer,name,nbits,target);
    write_fc_kernel_norm (previous_layer,layer,name,nbits,target);
    write_fc_kernel_value (previous_layer,layer,name,nbits,target);
    target.write("----------------------------------------------------------")
    target.write("--------------------------------------------------------\n")
######################################################################
def write_fileHead(target):
    target.write("--------------------------------------------------------\n")
    target.write("-- This file is generated with Haddoc2 utility \n")
    target.write("-- Generated on : " + time.ctime() + "\n")
    target.write("-- Author : Kamel ABDELOUAHAB\n")
    target.write("-- Institution : Institut Pascal\n")
    target.write("--------------------------------------------------------\n\n")
    target.write("library ieee;\n")
    target.write("	use	ieee.std_logic_1164.all;\n")
    target.write("library work;\n")
    target.write("	use	work.cnn_types.all;\n")
    target.write("package params is\n")
######################################################################
def write_fileEnd(target):
    target.write("end package;")
######################################################################



if __name__ == "__main__":

    HOME                = os.environ['HOME']
    CAFFE_DIRNAME       = HOME + '/caffe'
    CAFFE_PYTHON_LIB    = CAFFE_DIRNAME+'/python'
    sys.path.insert(0, CAFFE_PYTHON_LIB)
    import caffe;

    filename = "./test.vhd"
    cnn   = caffe.Net('../caffe/network/test.prototxt','../caffe/network/network.caffemodel',caffe.TEST)
    conv1 = cnn.params['conv1']
    conv2 = cnn.params['conv2']
    conv3 = cnn.params['conv3']
    fc    = cnn.params['fc']
    s1    = cnn.blobs['s1']
    s2    = cnn.blobs['s2']

    with open (filename,'w') as f:
        write_fileHead(f)
        parse_convLayer(conv1,'CONV1',8,f,320)
        parse_poolLayer(s1,'POOL1',f,318)
        parse_convLayer(conv2,'CONV2',8,f,159)
        parse_poolLayer(s2,'POOL2',f,157)
        parse_convLayer(conv3,'CONV3',8,f,79)
        parse_fcLayer  (conv3,fc,'FC',8,f,77)
        write_fileEnd(f)
