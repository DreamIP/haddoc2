#!/usr/bin/env sh

cd network

rm -rf ./*caffemodel
rm -rf ./*solverstate

TOOLS=$HOME/caffe/build/tools
$TOOLS/caffe train \
  --solver=./solver.prototxt $@

mv *.caffemodel network.caffemodel 
