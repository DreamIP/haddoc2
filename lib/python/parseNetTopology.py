# ----------------------------------------------------------------------------
# Title      : ParseNetTopology
# Project    : Haddoc2
# ----------------------------------------------------------------------------
# File       : ParseNetTopology.py
# Author     : K. Abdelouahab
# Company    : Institut Pascal
# Created    : 22-03-2017
# ----------------------------------------------------------------------------
# Description: Generates the toplevel desccription
# ----------------------------------------------------------------------------
import sys
import os
import numpy as np
CAFFE_ROOT = os.environ['CAFFE_ROOT']
CAFFE_PYTHON_LIB = CAFFE_ROOT + '/python'
sys.path.insert(0, CAFFE_PYTHON_LIB)
os.environ['GLOG_minloglevel'] = '2'  # Supresses Display on console
import caffe

## I . COMPONENENTS


def WriteComponents(target):
    target.write("--Components\n")
    WriteInputLayerComponent(target)
    WriteDisplayLayerComponent(target)
    WriteConvlayerComponent(target)
    WritePoolLayerComponent(target)
    target.write("\n")


def WriteInputLayerComponent(target):
    target.write("component InputLayer\n")
    target.write("generic (\n")
    target.write("  PIXEL_SIZE      : integer;\n")
    target.write("  PIXEL_BIT_WIDTH : integer;\n")
    target.write("  NB_OUT_FLOWS    : integer\n")
    target.write(");\n")
    target.write("port (\n")
    target.write("  clk      : in  std_logic;\n")
    target.write("  reset_n  : in  std_logic;\n")
    target.write("  enable   : in  std_logic;\n")
    target.write("  in_data  : in  std_logic_vector(PIXEL_SIZE-1 downto 0);\n")
    target.write("  in_dv    : in  std_logic;\n")
    target.write("  in_fv    : in  std_logic;\n")
    target.write("  out_data : out pixel_array(0 to NB_OUT_FLOWS-1);\n")
    target.write("  out_dv   : out std_logic;\n")
    target.write("  out_fv   : out std_logic\n")
    target.write(");\n")
    target.write("end component InputLayer;\n\n")


def WriteConvlayerComponent(target):
    target.write("component ConvLayer\n")
    target.write("generic (\n")
    target.write("  PIXEL_SIZE   : integer;\n")
    target.write("  IMAGE_WIDTH  : integer;\n")
    target.write("  SUM_WIDTH    : integer;\n")
    target.write("  KERNEL_SIZE  : integer;\n")
    target.write("  NB_IN_FLOWS  : integer;\n")
    target.write("  NB_OUT_FLOWS : integer;\n")
    target.write("  KERNEL_VALUE : pixel_matrix;\n")
    target.write("  BIAS_VALUE   : pixel_array\n")
    target.write(");\n")
    target.write("port (\n")
    target.write("  clk      : in  std_logic;\n")
    target.write("  reset_n  : in  std_logic;\n")
    target.write("  enable   : in  std_logic;\n")
    target.write("  in_data  : in  pixel_array(0 to NB_IN_FLOWS - 1);\n")
    target.write("  in_dv    : in  std_logic;\n")
    target.write("  in_fv    : in  std_logic;\n")
    target.write("  out_data : out pixel_array(0 to NB_OUT_FLOWS - 1);\n")
    target.write("  out_dv   : out std_logic;\n")
    target.write("  out_fv   : out std_logic\n")
    target.write(");\n")
    target.write("end component ConvLayer;\n\n")


def WriteDisplayLayerComponent(target):
    target.write("component DisplayLayer is\n")
    target.write("generic(\n")
    target.write("  PIXEL_SIZE : integer;\n")
    target.write("  NB_IN_FLOWS: integer\n")
    target.write(");\n")
    target.write("port(\n")
    target.write("  in_data  : in  pixel_array(0 to NB_IN_FLOWS-1);\n")
    target.write("  in_dv    : in  std_logic;\n")
    target.write("  in_fv    : in  std_logic;\n")
    target.write("  sel      : in  std_logic_vector(31 downto 0);\n")
    target.write("  out_data : out std_logic_vector(PIXEL_SIZE-1 downto 0);\n")
    target.write("  out_dv   : out std_logic;\n")
    target.write("  out_fv   : out std_logic\n")
    target.write(");\n")
    target.write("end component;\n\n")


def WritePoolLayerComponent(target):
    target.write("component PoolLayer\n")
    target.write("generic \n(")
    target.write("  PIXEL_SIZE   : integer;\n")
    target.write("  IMAGE_WIDTH  : integer;\n")
    target.write("  KERNEL_SIZE  : integer;\n")
    target.write("  NB_OUT_FLOWS : integer\n")
    target.write(");\n")
    target.write("port (")
    target.write("  clk      : in  std_logic;\n")
    target.write("  reset_n  : in  std_logic;\n")
    target.write("  enable   : in  std_logic;\n")
    target.write("  in_data  : in  pixel_array(0 to NB_OUT_FLOWS - 1);\n")
    target.write("  in_dv    : in  std_logic;\n")
    target.write("  in_fv    : in  std_logic;\n")
    target.write("  out_data : out pixel_array(0 to NB_OUT_FLOWS - 1);\n")
    target.write("  out_dv   : out std_logic;\n")
    target.write("  out_fv   : out std_logic\n")
    target.write(");\n")
    target.write("end component PoolLayer;\n")

#######################################################################################
## II. SIGNALS


def WriteLayerSignal(target, layer_name):
    target.write("signal " + layer_name +
                 "_data: pixel_array (0 to "
                 + layer_name + "_OUT_SIZE - 1);\n")
    target.write("signal " + layer_name + "_dv\t: std_logic;\n")
    target.write("signal " + layer_name + "_fv\t: std_logic;\n")


def WriteInputSignal(target, layer_name, next_layer_name):
    target.write("signal " + layer_name + "_data: pixel_array(0 to " +
                 next_layer_name + "_IN_SIZE-1);\n")
    target.write("signal " + layer_name + "_dv\t: std_logic;\n")
    target.write("signal " + layer_name + "_fv\t: std_logic;\n")


def WriteSignals(target, cnn):
    target.write(" -- Signals\n")
    for l in cnn._layer_names:
        layer_id = list(cnn._layer_names).index(l)
        layer_type = cnn.layers[layer_id].type
        if (layer_type == 'Input' or layer_type == 'Data'):
            next_layer_name = cnn._layer_names[1]
            WriteInputSignal(target, l, next_layer_name)
        if (layer_type == 'Convolution'):
            WriteLayerSignal(target, l)
        if (layer_type == 'Pooling'):
            WriteLayerSignal(target, l)
    target.write("\n")
#######################################################################################
## III. Instances


def WriteInstances(target, cnn):
    target.write(" -- Instances\n")
    target.write("begin\n")
    for l in cnn._layer_names:
        layer_id = list(cnn._layer_names).index(l)
        layer_type = cnn.layers[layer_id].type
        if (layer_type == 'Input' or layer_type == 'Data'):
            next_layer_name = cnn._layer_names[1]
            previous_layer_name = l
            InstanceInputLayer(target, l, next_layer_name)
        elif (layer_type == 'Convolution'):
            InstanceConvLayer(target, l, previous_layer_name)
            previous_layer_name = l
        elif (layer_type == 'Pooling'):
            InstancePoolLayer(target, l, previous_layer_name)
            previous_layer_name = l
        elif(layer_type == 'ReLU'):
            print("\tWARNING : Replaced ReLU with TanH Activation ...")
        elif(layer_type == 'TanH'):
            pass
        else:
            print("\tWARNING : Bypassed layer " + l + " of type " + layer_type)
    InstanceDisplayLayer(target, previous_layer_name)


def InstanceConvLayer(target, layer_name, previous_layer_name):
    target.write(layer_name + ": ConvLayer\n")
    target.write("generic map (\n")
    target.write("  PIXEL_SIZE   => PIXEL_SIZE,\n")
    target.write("  SUM_WIDTH    => SUM_WIDTH,\n")
    target.write("  IMAGE_WIDTH  => " + layer_name + "_IMAGE_WIDTH,\n")
    target.write("  KERNEL_SIZE  => " + layer_name + "_KERNEL_SIZE,\n")
    target.write("  NB_IN_FLOWS  => " + layer_name + "_IN_SIZE,\n")
    target.write("  NB_OUT_FLOWS => " + layer_name + "_OUT_SIZE,\n")
    target.write("  KERNEL_VALUE => " + layer_name + "_KERNEL_VALUE,\n")
    target.write("  BIAS_VALUE   => " + layer_name + "_BIAS_VALUE\n")
    target.write(")\n")
    target.write("port map (\n")
    target.write("  clk      => clk,\n")
    target.write("  reset_n  => reset_n,\n")
    target.write("  enable   => enable,\n")
    target.write("  in_data  => " + previous_layer_name + "_data,\n")
    target.write("  in_dv    => " + previous_layer_name + "_dv,\n")
    target.write("  in_fv    => " + previous_layer_name + "_fv,\n")
    target.write("  out_data => " + layer_name + "_data,\n")
    target.write("  out_dv   => " + layer_name + "_dv,\n")
    target.write("  out_fv   => " + layer_name + "_fv\n")
    target.write(");\n\n")


def InstancePoolLayer(target, layer_name, previous_layer_name):
    target.write(layer_name + " : PoolLayer\n")
    target.write("generic map (\n")
    target.write("  PIXEL_SIZE   => PIXEL_SIZE,\n")
    target.write("  IMAGE_WIDTH  => " + layer_name + "_IMAGE_WIDTH,\n")
    target.write("  KERNEL_SIZE  => " + layer_name + "_KERNEL_SIZE,\n")
    target.write("  NB_OUT_FLOWS => " + layer_name + "_OUT_SIZE\n")
    target.write(")\n")
    target.write("port map (\n")
    target.write("  clk      => clk,\n")
    target.write("  reset_n  => reset_n,\n")
    target.write("  enable   => enable,\n")
    target.write("  in_data  => " + previous_layer_name + "_data,\n")
    target.write("  in_dv    => " + previous_layer_name + "_dv,\n")
    target.write("  in_fv    => " + previous_layer_name + "_fv,\n")
    target.write("  out_data => " + layer_name + "_data,\n")
    target.write("  out_dv   => " + layer_name + "_dv,\n")
    target.write("  out_fv   => " + layer_name + "_fv\n")
    target.write(");\n\n")


def InstanceInputLayer(target, layer_name, next_layer_name):
    target.write("InputLayer_i : InputLayer\n")
    target.write("generic map (\n")
    target.write("  PIXEL_SIZE      => PIXEL_SIZE,\n")
    target.write("  PIXEL_BIT_WIDTH => PIXEL_SIZE,\n")
    target.write("  NB_OUT_FLOWS    => " + next_layer_name + "_IN_SIZE\n")
    target.write(")\n")
    target.write("port map (\n")
    target.write("  clk      => clk,\n")
    target.write("  reset_n  => reset_n,\n")
    target.write("  enable   => enable,\n")
    target.write("  in_data  => in_data,\n")
    target.write("  in_dv    => in_dv,\n")
    target.write("  in_fv    => in_fv,\n")
    target.write("  out_data => " + layer_name + "_data,\n")
    target.write("  out_dv   => " + layer_name + "_dv,\n")
    target.write("  out_fv   => " + layer_name + "_fv\n")
    target.write("  );\n\n")


def InstanceDisplayLayer(target, previous_layer_name):
    target.write("DisplayLayer_i: DisplayLayer\n")
    target.write("  generic map(\n")
    target.write("  PIXEL_SIZE => PIXEL_SIZE,\n")
    target.write("  NB_IN_FLOWS => " + previous_layer_name + "_OUT_SIZE\n")
    target.write("  )\n")
    target.write("  port map(\n")
    target.write("  in_data  => " + previous_layer_name + "_data,\n")
    target.write("  in_dv    => " + previous_layer_name + "_dv,\n")
    target.write("  in_fv    => " + previous_layer_name + "_fv,\n")
    target.write("  sel      => select_i,\n")
    target.write("  out_data => out_data,\n")
    target.write("  out_dv   => out_dv,\n")
    target.write("  out_fv   => out_fv\n")
    target.write(");\n")

#######################################################################################


def WriteLibs(target):
    target.write("library ieee;\n")
    target.write("  use ieee.std_logic_1164.all;\n")
    target.write("  use ieee.numeric_std.all;\n")
    target.write("library work;\n")
    target.write("  use work.bitwidths.all;\n")
    target.write("  use work.cnn_types.all;\n")
    target.write("  use work.params.all;\n")
#######################################################################################


def WriteEntity(target):
    target.write("entity cnn_process is\n")
    target.write("generic(\n")
    target.write("  PIXEL_SIZE  : integer := PIXEL_CONST;\n")
    target.write("  IMAGE_WIDTH : integer := CONV1_IMAGE_WIDTH\n")
    target.write(");\n")
    target.write("port(\n")
    target.write("  clk      : in std_logic;\n")
    target.write("  reset_n  : in std_logic;\n")
    target.write("  enable   : in std_logic;\n")
    target.write("  select_i : in std_logic_vector(31 downto 0);\n")
    target.write("  in_data  : in std_logic_vector(PIXEL_SIZE-1 downto 0);\n")
    target.write("  in_dv    : in std_logic;\n")
    target.write("  in_fv    : in std_logic;\n")
    target.write("  out_data : out std_logic_vector(PIXEL_SIZE-1 downto 0);\n")
    target.write("  out_dv   : out std_logic;\n")
    target.write("  out_fv   : out std_logic\n")
    target.write("  );\n")
    target.write("end entity;\n\n")
#######################################################################################


def WriteArchitecutreHead(target):
    target.write("architecture STRUCTURAL of cnn_process is\n")


def WriteArchitectureEnd(target):
    target.write("end architecture;\n")
#######################################################################################


def WriteArchitecture(target, cnn):
    WriteArchitecutreHead(target)
    WriteSignals(target, cnn)
    WriteComponents(target)
    WriteInstances(target, cnn)
    WriteArchitectureEnd(target)
#######################################################################################


def main(top_level_vhdl, proto_file, weight_file):
    cnn = caffe.Net(proto_file, weight_file, caffe.TEST)
    with open(top_level_vhdl, 'w') as f:
        # Opens target toplevel vhdl file
        WriteLibs(f)
        WriteEntity(f)
        WriteArchitecture(f, cnn)
    os.environ["GLOG_minloglevel"] = "0"


if __name__ == '__main__':
    # DEBUG
    top_level_vhdl = "/home/kamel/Seafile/Code/Haddoc-v3/example/hdl_generated/cnn_process.vhd"
    proto_file = "/home/kamel/Seafile/CNN-Models/lenet.prototxt"
    weight_file = "/home/kamel/Seafile/CNN-Models/lenet.caffemodel"
    main(top_level_vhdl, proto_file, weight_file)
