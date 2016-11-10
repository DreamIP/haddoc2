#!/usr/bin/env sh

cd network

rm -rf ./*caffemodel
rm -rf ./*solverstate

TOOLS=$HOME/caffe/build/tools
# TOOLS=$HOME/dev/caffe/build/tools

$TOOLS/caffe train \
  --solver=./solver.prototxt $@

rm -rf ./*solverstate
mv *.caffemodel network.caffemodel
