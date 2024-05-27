# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh1_compile.zsh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chenxu <chenxu@mail.ustc.edu.cn>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/08 18:43:25 by chenxu            #+#    #+#              #
#    Updated: 2024/05/27 13:20:47 by chenxu           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
# cspell:disable
jobs=6

cd ${HOME}/software/corsika/corsikainterface/build/
rm -rf ${HOME}/software/corsika/corsikainterface/build/*
cmake ../git -GNinja
ninja
ninja install

cd ${HOME}/software/coord_cx/build
rm -rf ${HOME}/software/coord_cx/build/*
cmake ../git -GNinja
ninja
ninja install

cd ${HOME}/software/chenxufunc/build
rm -rf ${HOME}/software/chenxufunc/build/*
cmake ../git -GNinja
ninja
ninja install
