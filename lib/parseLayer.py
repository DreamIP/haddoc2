import sys
import os
import numpy as np

def write_in_size (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_IN_SIZE  :  integer := ")
    target.write(str(value) + " ;\n")

def write_out_size (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_OUT_SIZE  :  integer := ")
    target.write(str(value) + " ;\n")

######################################################################
def write_kernel_size (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_KERNEL_SIZE :  integer := ")
    target.write(str(value) + " ;\n")

######################################################################
def write_image_width (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_IMAGE_WIDTH :  integer := ")
    target.write(str(value) + " ;\n")

######################################################################
def write_bias_value (layer_name,value,target):
    target.write("constant ")
    target.write(layer_name)
    target.write("_BIAS_VALUE  :  pixel_array :=")
    target.write("   (0 to " + layer_name + "_LAYER_SIZE - 1 ")

######################################################################
def to_fixedPoint (data,scale_factor):
    scaled_data = scale_factor * data
    return np.array(np.round(scaled_data),dtype=int)

######################################################################
def parse_convLayer (layer,name,scale_factor,target):
    layer_name   = name;
    kernel_data  = layer[0].data
    bias_data    = layer[1].data
    out_size     = kernel_data.shape[0]
    in_size      = kernel_data.shape[1]
    kernel_size  = kernel_data.shape[2]
    kernel_fp    = to_fixedPoint(kernel_data,scale_factor)
    bias_fp      = to_fixedPoint(bias_data,scale_factor)

    for n in range(out_size):
        for m in range (in_size):
            for i in range(kernel_size):
                for j in range(kernel_size):
                    s = np.binary_repr(kernel_fp[n][m][i][j] , width=9)
                    print s

# ######################################################################
# def write_kernel_norm (layer_name,value,target):
#
#
# ######################################################################
# def write_kernel_value (layer_name,value,target):

if __name__ == "__main__":

    # HOME                = os.environ['HOME']
    # CAFFE_DIRNAME       = HOME + '/caffe'
    # CAFFE_PYTHON_LIB    = CAFFE_DIRNAME+'/python'
    # sys.path.insert(0, CAFFE_PYTHON_LIB)
    # import caffe;
