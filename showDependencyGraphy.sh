#! /usr/bin/bash
pushd ./build
cmake . --graphviz=test.graph
dotty ./test.graph
popd


# Notice:
# install font to display node name
# sudo apt install xfonts-100dpi
