#!/bin/bash

export PATH=$(pwd)/toolchain/avr/bin:$PATH
export CC=avr-linux-gcc  #export C compiler name
export CXX=avr-linux-g++ #EXPORT C++ compiler name

TOOLCHAIN_PATH=$(pwd)/toolchain/avr-toolchain.cmake

cmake   -S . -B build									\
	-G "Ninja"											\
	-DCMAKE_BUILD_TYPE=Release							\
	-DCMAKE_C_FLAGS="-Wall -Werror -mmcu=attiny85"		\
	-DCMAKE_CXX_FLAGS="-Wall -Werror -mmcu=attiny85"	\
	-DCMAKE_C_FLAGS_RELEASE="-O3"						\
	-DCMAKE_CXX_FLAGS_RELEASE="-O3"						\
	-Wdev												\
	-DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_PATH}


cmake --build build --clean-first --verbose -j