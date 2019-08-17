#!/bin/bash
bash -c "rm -rf ./build/"
bash -c "meson build/"
bash -c "cd build && ninja && cd ../ && ./build/src/App"
