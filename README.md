# HADDoC2 :  Hardware Automated Dataflow Description of CNNs
HADDoC is a tool to generate hardware description (VHDL) of a neural network (CNN) respecting the dataflow semantics. 
We recommend to previously install the Caffe Framework to design CNNs, GPStudio-FPGA to create nodes and coms for your CNN process and Quartus synthesis tool compile and synthesize your project. (Even if haddoc's generated hdl is hardware independent)


## IP Catalog
`ip` directory contains the VHDL design files that will be instantiated during the generation process.  Currently, 3 types of layers are supported
- `hdl/convLayer.vhd` : Performs generic kernel convolutions on a generic number of in flows.
- `hdl/poolLayer.vhd` : Performs subsampling (max pool) on generic neighborhood of input images.
- `hdl/fcLayer.vhd`   : Fully connected layer. Output a genetic number of maps where each pixel corresponds to a region in the input image of the CNN.

Components required to implement these layers can be found at `hdl/` directory
todo : LNR layers for AlexNet fanboys :)



## Example
`example/` directory presents a Caffe-engineered CNN with 2 convolutional layers and two subsampling layers
- `hdl/cnn_process.vhd` is the main design file. It instanciates the adequate layers and connects them correctly.
    - [ to be generated from `.prototxt ` file using json parser ]
- `hdl/params.vhd` contains the network parameters
    - [ to be generated from `.caffemodel ` file using caffe python handlers ]


## VHDL Generator
A first parameter parser can be found at `lib/` and contains scripts to generate `params.vhd`. This file contains the transcription of the CNN topology and parameters as VHDL constants. Theses will be affected will parametrize the instantiated layers of the CNN.
The TopLevel HDL file is generated using the `.prototxt` description of the CNN.
