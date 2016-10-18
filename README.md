# HADDoC2 : Hardware Automated Dataflow Description of CNNs

This work introduces a software tool to generate hardware description of a neural network respecting the dataflow semantics.
- `ip` directory contains the VHDL design files that will be instantiated during the generation process.
- `Caffe` directory contains scripts to generate CNN models using the Caffe Framework
- `example/cnn/` directory presents a hard-wired CNN with 2 convolutional layers and two subsampling layers
	- `hdl/cnn_process.vhd` is the main design file. It instanciates the adequate layers and connects them correctly. (** To be generated from `.prototxt ` file **)
	- `hdl/params.vhd` contains the network parameters (** To be generated from `.caffemodel ` file **)
