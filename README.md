# Haddoc2 :  Hardware Automated Dataflow Description of CNNs

Haddoc2 is a tool to automatically design FPGA-based hardware accelerators for convolutional neural networks (CNNs). Using a Caffe model, Haddoc2 generates a hardware description of the network (in VHDL-2008) which is constructor and device independent. Haddoc2 is built upon the principals of Dataflow stream-based processing of data, and, implements CNNs using a Direct Hardware Mapping approach, where all the actors involved in CNN processing are physically  mapped on the FPGA.

More implementation details can be found in this [technical report](https://arxiv.org/abs/1705.04543) and the this [paper](https://arxiv.org/pdf/1712.04322.pdf)
If you find Haddoc2 useful in your research, please consider citing the following paper

    @article{Abdelouahab17,
    author = {Abdelouahab, Kamel and Pelcat, Maxime and Serot, Jocelyn. and Bourrasset, Cedric and Berry, Fran{\c{c}}ois},
    doi = {10.1109/LES.2017.2743247},
    issn = {19430663},
    journal = {IEEE Embedded Systems Letters},
    keywords = {CNN,Dataflow,FPGA,VHDL},
    pages = {1--4},
    title = {Tactics to Directly Map CNN graphs on Embedded FPGAs},
    url = {http://ieeexplore.ieee.org/document/8015156/},
    year = {2017}}

For a short demo of the tool, see [here](https://www.youtube.com/watch?v=qqex4tHG-gk&t=14s)

## Pre-requisite

-   [Caffe](https://github.com/BVLC/caffe) with A simple CPU-only build is needed.
-   [Quartus II](https://www.altera.com/downloads/download-center.html) or [Vivado](https://www.xilinx.com/support/download.html) (Optional) : to compile and synthesize your design
-   [GPStudio FPGA](https://github.com/DreamIP/GPStudio) (Optional): Haddoc2 generated accelerators are compatible with GPStudio, a tool-chain to to deploy image processing applications on FPGA-based smart cameras.

## Execution

To run haddoc2, please use the binders in `bin/` directory.

    python ../lib/haddoc2.py \
           --proto=<path to caffe prototxt> \
           --model=<path to caffe model> \
           --out=<output directory> \
           --nbits=<fixed point format. Default nbits=8>

Note that Haddoc2 needs to know where your Caffe and Haddoc2 installation directories are. Please add the following environment variables or edit you `.bashrc` file in Linux. For instance :

    export CAFFE_ROOT="$HOME/caffe"
    export HADDOC2_ROOT="$HOME/dev/haddoc2"

Components required to implement the supported CNN layers can be found at `lib/hdl/` directory.
**Important: Be sure to synthesize your project in VHDL 2008 mode !**

## Generating an example

`example/` directory contains pre-trained BVLC_caffe model version of the Lenet5 CNN. Please use the Makefile given to test Haddoc2.

-   `make hdl` generates the VHDL description of the CNN
-   `make quartus_proj` creates a simple Quartus II project to implement LeNet on an Intel Cyclone V FPGA
-    `make compile` lunches Quartus tool to compile and synthesize your design. This command requires `quartus` binary to be on your path


    cd $HADDOC2_ROOT/example
    make hdl
    >> Haddoc2 CNN parameter parser:
        prototxt: ./caffe/lenet.prototxt
        caffe model: ./caffe/lenet.caffemodel
        vhdl out: ./hdl_generated
        bit width : 5
    >> Generated toplevel file: ./hdl_generated/cnn_process.vhd

    make quartus_proj
    >> Succefully generated quartus project

    make compile
    >> quartus_map cnn_process -c cnn_process
    ...

# TODO

1.  Add support of BatchNorm / Sigmoid / ReLU layers
2.  Implement Dynamic Fixed Point Arithmetic
3.  Support conv layers with sparse connections (such AlexNet's conv2 layer, where each neuron is connected to only half of conv1 outputs i.e n_outputs(layer-1) != n_inputs(layer) )
