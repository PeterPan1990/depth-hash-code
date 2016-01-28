#!/usr/bin/env sh

./build/tools/caffe train \
  --solver=examples/A-mnist/solver.prototxt \
  --weights=examples/A-mnist/lenet_iter_10000.caffemodel \
  2>&1 | tee ./examples/A-mnist/log.txt
