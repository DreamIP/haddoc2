echo "make_example.sh"
echo "This script generates full VHDL code of the the CNN described in ./example/caffe"
../bin/haddoc2 ./caffe/deploy.prototxt ./caffe/network.caffemodel ./hdl_generated
python ../lib/quartus.py
echo "Generated Quartus project"
