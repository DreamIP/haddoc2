# Haddoc2 :  Hardware Automated Dataflow Description of CNNs
Haddoc2 is a tool to automatically design FPGA-based hardware accelerators for convolutional neural networks (CNNs). Using a Caffe model, Haddoc2 generates a hardware description of the network (in VHDL-87) which is constructor and device independent. Haddoc2 is built upon the principals of Dataflow stream-based processing of data, and, implements CNNs using a Direct Hardware Mapping approach, where all the actors involved in CNN processing are physically  mapped on the FPGA.

More implementation details can be found in this [technical report](https://arxiv.org/abs/1705.04543) and the this [paper](https://www.researchgate.net/profile/Kamel_Abdelouahab/publication/319258752_Tactics_to_Directly_Map_CNN_graphs_on_Embedded_FPGAs/links/59e60a5caca272390ee02342/Tactics-to-Directly-Map-CNN-graphs-on-Embedded-FPGAs.pdf?origin=publication_detail&ev=pub_int_prw_xdl&msrp=gQefk54M8Tdnk4g76MAMzqykHGTN7ukVyBzP3qkuPxj8toj3rGo_8yB5muVLa4HOcKD--Yjj3TyGDWa6mMMF9aANqOzpLd4vtrxpsP3ZCqkDAm-ZzQYkJ9s-.4RjZnyFpwz-5Tos4Dv7UyQoB1gIf8V1q1wLMGOy4uCcUK2OMXc24LdTvkKiVLcTCmcqBysf3iZlxf4IwQ6UsHgqG4pguudsC5fEvFA.-0UWG5mSHa61qzSszI2tYSlID65CF4R_zpxNfRkfeRDL1Pe1x3HJwp7O3uAJweRCYIM3mFei1JuQvmS7NCTeZIZUlK0MsbrTvQRgAQ.jCop4SPL-ToaM4G6puyag4u_ubgcX-dykkmOsQQnS0rm7gnwyotySa511nomGhiOlH1o3g_7j0z0NXlKkM8G2qOtALD09B6bP-SMBA) 
If you find Haddoc2 useful in your research, please consider citing the following paper
```
@article{Abdelouahab17,
author = {Abdelouahab, Kamel and Pelcat, Maxime and Serot, Jocelyn. and Bourrasset, Cedric and Berry, Fran{\c{c}}ois},
doi = {10.1109/LES.2017.2743247},
issn = {19430663},
journal = {IEEE Embedded Systems Letters},
keywords = {CNN,Dataflow,FPGA,VHDL},
pages = {1--4},
title = {{Tactics to Directly Map CNN graphs on Embedded FPGAs}},
url = {http://ieeexplore.ieee.org/document/8015156/},
year = {2017}}
```
A short demo of the tool: here [here](https://www.youtube.com/watch?v=qqex4tHG-gk&t=14s)

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
