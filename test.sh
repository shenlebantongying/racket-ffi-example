#!/usr/bin/env bash

{
  cmake -S . -B cmake-build-debug \
        -DCMAKE_BUILD_TYPE=Debug
  cmake --build  cmake-build-debug --parallel 4
  cmake --install cmake-build-debug
} &> /dev/null # change %> to > to get stderr

racket ./use-lib.rkt
