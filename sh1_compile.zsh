#!/bin/zsh
# copyright https://mit-license.org
# File              : sh1_compile.sh
# Author            : chenxu <chenxu@mail.ustc.edu.cn>
# Date              : 2 2021-06-08 16:26:06
# Last Modified Date: 2 2021-06-08 16:26:06
# Last Modified By  : chenxu <chenxu@mail.ustc.edu.cn>

cd ${HOME}/software/corsika/corsikainterface/build/
rm -rf ${HOME}/software/corsika/corsikainterface/build/*
cmake ../git
make -j2
make install

cd ${HOME}/software/coord_cx/build
rm -rf ${HOME}/software/coord_cx/build/*
cmake ../git
make -j2
make install

cd ${HOME}/software/ROOT/ROOT_cx2/build
rm -rf ${HOME}/software/ROOT/ROOT_cx2/build/*
cmake ../git
make -j2
make install
