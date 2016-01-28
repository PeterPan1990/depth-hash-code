#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train \
  --solver=examples/A-Oxford102/solver.prototxt \
  --weights=examples/A-Oxford102/oxford102_VGG_S__iter_50000.caffemodel \
  2>&1 | tee ./examples/A-Oxford102/log.txt

