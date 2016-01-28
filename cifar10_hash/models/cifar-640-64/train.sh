#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train \
  --solver=examples/A-cifar10/solver.prototxt \
  --weights=examples/A-cifar10/cifar10_nin.caffemodel \
  2>&1 | tee ./examples/A-cifar10/log.txt

