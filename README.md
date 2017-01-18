# HADDoC2 :  Hardware Automated Dataflow Description of CNNs
HADDoC is a tool to generate hardware description (VHDL) of a neural network (CNN) respecting the dataflow semantics. 
We recommend to first install the Caffe Framework to design CNNs, GPStudio-FPGA to create nodes and coms for your CNN process and Quartus synthesis tool to compile and synthesize your project. (Even if haddoc's generated hdl is hardware independent)

To run haddoc2, please use the binders in `bin/` directory
`haddoc2 [.prototxt] [.caffemodel] [tagetDirectory]`

## IP Catalog
`ip` directory contains the VHDL design files that will be instantiated during the generation process.  Currently, 3 types of layers are supported
- `hdl/convLayer.vhd` : Performs generic kernel convolutions on a generic number of in flows.
- `hdl/poolLayer.vhd` : Performs subsampling (max pool) on generic neighborhood of input images.
- `hdl/fcLayer.vhd`   : Fully connected layer. Output a genetic number of maps where each pixel corresponds to a region in the input image of the CNN.

Components required to implement these layers can be found at `hdl/` directory.

Todo : Add a hardware implementation of LNR layer for AlexNet fanboys :)



## Example
`example/` directory contains a custon Caffe-engineered CNN with 2 convolutional layers and two subsampling layers
- `hdl/cnn_process.vhd` is the toplevel file. It instanciates the adequate layers and connects them correctly.
- `hdl/params.vhd` contains the network parameters

One can try the `./make_example.sh` to see what happens :)
