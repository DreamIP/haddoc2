import sys
import os
import numpy as np
import math
import time


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
def to_shiftNorm(kernel):
    ### DEPRECATED ###
    # Experimental results show that for kernels with a low norm
    # It s better to give a higher shift value, so , dont be surprised with the 2 following line
    # Now, Im going to hide this where only the strongest of you can find it
    norm  = np.abs(np.sum(kernel[...]));
    if (norm < 4):
        return 8;
    else:
        real_shift = math.log(norm,2);
        int_shift  = int(real_shift);
        return int_shift + 1;
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
def write_kernel_value (previous_layer,layer,name,nbits,target):

    layer_name   = name;
    kernel_data  = layer[0].data

    scale_factor = to_scaleFactor(nbits)
    out_size     = kernel_data.shape[0]
    in_size      = kernel_data.shape[1]
    kernel_size  = kernel_data.shape[2]
    previous_layer_size = previous_layer[0].data.shape[0]
    isGroup      = (previous_layer_size != in_size and name != 'CONV1')
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

    # In some Networks, such AlexNet, neurons from layer l are not totally connected to layer l+1
    # But only a group is connected. We manage this as follows:
    if (not(isGroup)):
        for n in range(out_size):
            for m in range (in_size):
                target.write("(")
                for i in range(kernel_size-1,-1,-1):
                    for j in range(kernel_size-1,-1,-1):
                        if (kernel_fp[n][m][i][j] > scale_factor):
                            kernel_fp[n][m][i][j] = scale_factor;
                        if (kernel_fp[n][m][i][j] < -scale_factor):
                            kernel_fp[n][m][i][j] = -scale_factor;
                        kernel_bin = np.binary_repr(kernel_fp[n][m][i][j] , width=nbits)
                        target.write ("\"" + kernel_bin + "\"")
                        if ((i == 0) and (j == 0) ):
                            if ((n == out_size - 1) and (m == in_size - 1) ):
                                target.write (")\n")
                            else:
                                target.write("),\n  ")
                        else:
                            target.write(",")
        target.write(" );\n")
    else:
        n = 0;
        dm = 0;
        # while (n<out_size):
        for n in range(out_size):
            m = 0;
            target.write("-- Neuron : %d \n" %n)
            while (m < previous_layer_size):
                # if ((n<=out_size/2 and m>=in_size)):
                if ((n<=out_size/2 and m>=in_size) or (n>out_size/2 and m<=in_size)):
                    #target.write("-- Group : We put some zeros here : %d \n" %m)
                    if (n>out_size/2):
                        dm = in_size-m;
                    else:
                        dm = m;
                        end = ",\n"
                    target.write("  (others =>(others=> \'0\'))" + end)

                else:
                    if (n>out_size/2):
                        dm = in_size-m;
                    else:
                        dm = m;
                    # print str(n) + " " + str(m)
                    target.write("  (")
                    for i in range(kernel_size-1,-1,-1):
                        for j in range(kernel_size-1,-1,-1):
                            if (kernel_fp[n][dm][i][j] > scale_factor):
                                kernel_fp[n][dm][i][j] = scale_factor;
                            if (kernel_fp[n][dm][i][j] < -scale_factor):
                                kernel_fp[n][dm][i][j] = -scale_factor;
                            kernel_bin = np.binary_repr(kernel_fp[n][dm][i][j] , width=nbits)
                            target.write ("\"" + kernel_bin + "\"")
                            if ((i == 0) and (j == 0) ):
                                if ((n == out_size - 1) and (m == previous_layer_size - 1) ):
                                    target.write (")\n")
                                else:
                                    target.write("),\n")
                            else:
                                target.write(",")
                m = m+1;

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
    target.write("  (others =>(others=> \'0\'));\n")
    # for n in range(out_size):
    #     for m in range (in_size):
    #         shift_norm = to_shiftNorm(kernel_fp[n][m]);
    #         shift_norm_bin = np.binary_repr(shift_norm , width=nbits);
    #         target.write ("\"" + shift_norm_bin + "\"")
    #         if ((n == out_size - 1) and (m == in_size - 1) ):
    #             target.write (");\n")
    #         else:
    #             target.write(",")

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
            for i in range(kernel_size-1,-1,-1):
                for j in range(kernel_size-1,-1,-1):
                    kernel_bin = np.binary_repr(kernel_fp[n][m][i][j] , width=nbits)
                    target.write ("\"" + kernel_bin + "\"")
                    if ((i == 0) and (j == 0) ):
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
def parse_convLayer (previous_layer,layer,name,nbits,target,image_width):
    layer_name   = name;
    kernel_data  = layer[0].data
    out_size     = kernel_data.shape[0]
    if (layer_name == 'CONV1'):
        in_size = layer[0].data.shape[1];
        previous_layer_size =  layer[0].data.shape[1];
    else:
        in_size             = kernel_data.shape[1]
        previous_layer_size = previous_layer[0].data.shape[0]
    kernel_size  = kernel_data.shape[2]
    ## Test if layer is with group :
    if(previous_layer_size != in_size and name != 'CONV1'):
        print "Potential group in layer " + layer_name + ": " + str(in_size) + " vs " + str(previous_layer_size)
        nb_group = in_size / previous_layer_size;

    ## Write layer params ##
    target.write("--" + layer_name + "\n")
    write_image_width (layer_name,image_width,target);
    write_in_size (layer_name,previous_layer_size,target);
    write_out_size (layer_name,out_size,target);
    write_kernel_size (layer_name,kernel_size,target);
    write_bias_value (layer,name,nbits,target);
    write_kernel_norm (layer,name,nbits,target);
    write_kernel_value (previous_layer,layer,name,nbits,target);
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
    # target.write("-- Author : \n")
    # target.write("-- Institution : Institut Pascal\n")
    target.write("--------------------------------------------------------\n\n")
    target.write("library ieee;\n")
    target.write("	use	ieee.std_logic_1164.all;\n")
    target.write("library work;\n")
    target.write("	use	work.cnn_types.all;\n")
    target.write("package params is\n")
######################################################################
def write_pixelWidth(target,pixelWidth):
    target.write("constant PIXEL_CONST	: integer :=" + str(pixelWidth) + ";\n")
######################################################################
def write_fileEnd(target):
    target.write("end package;")
######################################################################

#
#
# if __name__ == "__main__":
#
#     HOME                = os.environ['HOME']
#     CAFFE_DIRNAME       = HOME + '/caffe'
#     CAFFE_PYTHON_LIB    = CAFFE_DIRNAME+'/python'
#     sys.path.insert(0, CAFFE_PYTHON_LIB)
#     import caffe;
#
#     filename = "../example/cnn/hdl/params.vhd"
#     cnn   = caffe.Net('../caffe/network/test.prototxt','../caffe/network/network.caffemodel',caffe.TEST)
#     conv1 = cnn.params['conv1']
#     conv2 = cnn.params['conv2']
#     conv3 = cnn.params['conv3']
#     fc    = cnn.params['fc']
#     s1    = cnn.blobs['s1']
#     s2    = cnn.blobs['s2']
#
#     with open (filename,'w') as f:
#         write_fileHead(f)
#         parse_convLayer(conv1,'CONV1',8,f,320)
#         parse_poolLayer(s1,'POOL1',f,318)
#         parse_convLayer(conv2,'CONV2',8,f,159)
#         parse_poolLayer(s2,'POOL2',f,157)
#         parse_convLayer(conv3,'CONV3',8,f,79)
#         parse_fcLayer  (conv3,fc,'FC',8,f,77)
#         write_fileEnd(f)
