# Haddoc2 :  Hardware Automated Dataflow Description of CNNs
Haddoc2 is a tool to automatically design FPGA-based hardware accelerators for convolutional neural networks (CNNs). Using a Caffe model, Haddoc2 generates a hardware description of the network (in VHDL-87) which is constructor and device independent. Haddoc2 is built upon the principals of Dataflow stream-based processing of data, and, implements CNNs using a Direct Hardware Mapping approach, where all the actors involved in CNN processing are physically  mapped on the FPGA.

More implementation details can be found here [here](https://arxiv.org/abs/1705.04543)


## Pre-requisite
- [Caffe](https://github.com/BVLC/caffe) with A simple CPU-only build is needed.
- [Ocamlrun](https://ocaml.org/docs/install.html) : Required by the VHDL top-level generator
- [Quartus II](https://www.altera.com/downloads/download-center.html) or [Vivado](https://www.xilinx.com/support/download.html) (Optional) : to compile and synthesize your design
- [GPStudio FPGA](https://github.com/DreamIP/GPStudio) (Optional): Haddoc2 generated accelerators are compatible with GPStudio, a tool-chain to to deploy image processing applications on FPGA-based smart cameras.

## Execution
To run haddoc2, please use the binders in `bin/` directory.
```
python ../lib/haddoc2.py \
       --proto=<path to caffe prototxt> \
       --model=<path to caffe model> \
       --out=<output directory> \
       --nbits=<fixed point format. Default nbits=8>
```
Note that Haddoc2 needs to know where your Caffe and Haddoc2 installation directories are. Please add the following environment variables or edit you `.bashrc` file in Linux. For instance :

```
export CAFFE_ROOT="$HOME/caffe"
export HADDOC2_ROOT="$HOME/dev/haddoc2"
```



## IP Catalog
`ip` directory contains the VHDL design files that will be instantiated during the generation process.  Currently, 3 types of layers are supported
- `hdl/convLayer.vhd` : Performs generic kernel convolutions on a generic number of in flows.
- `hdl/poolLayer.vhd` : Performs subsampling (max pool) on generic neighborhood of input images.
- `hdl/fcLayer.vhd`   : Fully connected layer. Output a genetic number of maps where each pixel corresponds to a region in the input image of the CNN.

Components required to implement these layers can be found at `lib/hdl/` directory.



## Example
`example/` directory contains pre-trained BVLC_caffe model version of the Lenet5 CNN. Please use the Makefile given to test Haddoc2.
-  `make hdl` generates the VHDL description of the CNN
-  `make quartus_proj` creates a simple Quartus II project to implement LeNet on an Intel Cyclone V FPGA
-  `make compile` lunches Quartus tool to compile and synthesize your design. This command requires `quartus` binary to be on your path

```
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


```
