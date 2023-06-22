# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh1_compile.zsh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chenxu <chenxu@mail.ustc.edu.cn>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/08 18:43:25 by chenxu            #+#    #+#              #
#    Updated: 2023/06/22 18:44:04 by chenxu           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

jobs=6

cd ${HOME}/software/corsika/corsikainterface/build/
rm -rf ${HOME}/software/corsika/corsikainterface/build/*
cmake ../git
make -j${jobs}
make install

cd ${HOME}/software/coord_cx/build
rm -rf ${HOME}/software/coord_cx/build/*
cmake ../git
make -j${jobs}
make install

cd ${HOME}/software/ROOT/ROOT_cx2/build
rm -rf ${HOME}/software/ROOT/ROOT_cx2/build/*
cmake ../git
make -j${jobs}
make install
