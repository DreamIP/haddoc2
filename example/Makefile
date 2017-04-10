all: haddoc2 quartus_proj

clean:
	rm -rf ./hdl_generated
	rm ./cnn_process.qsf
	rm ./cnn_process.qpf
haddoc2:
	../bin/haddoc2  ./caffe/lenet.prototxt ./caffe/lenet.caffemodel ./hdl_generated
quartus_proj:
	python ../lib/quartus.py ./
