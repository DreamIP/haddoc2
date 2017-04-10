all: haddoc2 quartus_proj

clean:
	rm -rf ./hdl_generated
	rm -f ./cnn_process.qsf
	rm -f ./cnn_process.qpf
	rm -f ./*.rpt

haddoc2:
	../bin/haddoc2  ./caffe/lenet.prototxt ./caffe/lenet.caffemodel ./hdl_generated

quartus_proj:
	python ../lib/quartus.py ./

compile:
	quartus_map cnn_process -c cnn_process
	quartus_fit cnn_process -c cnn_process
