all: hdl quartus_proj

clean:
    rm -rf ./hdl_generated
    rm -rf ./build
    rm -rf ./db
    rm -rf ./incremental_db

    rm -f ./cnn_process.qsf
    rm -f ./cnn_process.qpf
    rm -f ./*.rpt

hdl:
    python3 ../lib/haddoc2.py \
    --proto=./caffe/lenet.prototxt \
    --model=./caffe/lenet.caffemodel \
    --out=./hdl_generated \
    --nbits=5

quartus_proj:
    python ../lib/quartus.py ./

compile:
    quartus_map cnn_process -c cnn_process
    quartus_fit cnn_process -c cnn_process
