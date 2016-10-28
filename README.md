# HADDoC2 :  Hardware Automated Dataflow Description of CNNs
HADDoC is a tool to generate hardware description (VHDL) of a neural network (CNN) respecting the dataflow semantics. Depending on the example you will run, you may need Caffe Framework, Quartus 13.1 synthesis tool or GPStudio-FPGA to be previously installed.  


## IP Catalog
`ip` directory contains the VHDL design files that will be instantiated during the generation process.  Currently, 2 types of layers are supported
- `hdl/convLayer.vhd` : Performs generic kernel convolutions on a generic number of in flows.
- `hdl/poolLayer.vhd` : Performs subsampling (max pool) on generic neighborhood of input images.
- `hdl/fcLayer.vhd`   : Fully connected layer. Output a genetic number of maps where each pixel corresponds to a region in the input image of the CNN.

Components required to implement these layers can be found at `hdl/` directory

## Caffe
`caffe` directory contains scripts to generate CNN models using the Caffe Framework. A trained model is given  `caffe/network`. You'll need to provide datasets on the `caffe/dataset` directory
- `genNetwork.py` is a python script to build the CNN (The wanted topology is introduced here). It generates `network/train.prototxt` and `network/test.prototxt` files that are required to respectively train and test the network. it also generates the solver `network/solver.prototxt` to perform the training.
- `trainNetwork.py` is a script to train the generated CNN to produce a model that is ready to deploy.
- `network/test.prototxt` describes the topology of the generated CNN (number of neurons per layer, image size ...)
- `network/network.caffemodel` contains the parameters of the trained model (kernel weights, bias terms)


## Example
`example/cnn/` directory presents a hard-wired CNN with 2 convolutional layers and two subsampling layers
- `hdl/cnn_process.vhd` is the main design file. It instanciates the adequate layers and connects them correctly.
    - [ to be generated from `.prototxt ` file using json parser ]
- `hdl/params.vhd` contains the network parameters
    - [ to be generated from `.caffemodel ` file using caffe python handlers ]

The `example/cnn/Node` directory presents an implementation example of the CNN on a Dreamcam_C3 platform. To generate the `.node` file, please run the `make_node.sh` script

## VHDL Generator
A first parameter parser can be found at `lib/` and contains scripts to generate `params.vhd`. This file contains the transcription of the CNN topology and parameters as VHDL constants. Theses will be affected will parametrize the instantiated layers of the CNN.

# TODO 
- Validate the layer parser functionnally. 
- Add Bias support in the first convLayer (firstLayer) and fix bug as in b7dc7828b38f3f03668c28d55c56232b2b2e7982
- Add a softmax deisgn file to perform the last classification stage
- Add Network parser 
