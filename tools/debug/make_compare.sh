cd ../../caffe/
./trainNetwork.sh
cd ../lib
python parseLayer.py
cd ../example/cnn/Node/
./make_node.sh
cd ../../../tools/debug/
