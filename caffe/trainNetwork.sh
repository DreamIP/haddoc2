#!/usr/bin/env sh

rm -rf ./*caffemodel
rm -rf ./*solverstate

TOOLS=$HOME/caffe/build/tools
$TOOLS/caffe train \
  --solver=./network/solver.prototxt $@
