# avr-cross-compile
Simple CMake project to cross-compile an example library from Linux to AVR 8-bit.

The toolchain was generated with [crosstool-ng](https://crosstool-ng.github.io/docs/) and it's available in [avr](toolchain/avr) folder.

## Toolchain Usage

The path to C/C++ compilers and binutils must be added to the PATH environment variable:
```
export PATH=$(pwd)/toolchain/avr/bin:$PATH
export CC=avr-linux-gcc
export CXX=avr-linux-g++
```


A CMake toolchain file [avr-toolchain.cmake](toolchain/avr-toolchain.cmake) must be provided in CMake configuration step:

```
TOOLCHAIN_PATH=$(pwd)/toolchain/avr-toolchain.cmake
```
```
cmake   -S . -B build                                           \
	-G "Ninja"						\
	-DCMAKE_BUILD_TYPE=Release			        \
	-DCMAKE_C_FLAGS="-Wall -Werror -mmcu=attiny85"		\
	-DCMAKE_CXX_FLAGS="-Wall -Werror -mmcu=attiny85"	\
	-DCMAKE_C_FLAGS_RELEASE="-O3"				\
	-DCMAKE_CXX_FLAGS_RELEASE="-O3"			        \
	-Wdev					                \
	-DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_PATH}
```

Finally, to build the project:
```
cmake --build build --clean-first --verbose -j
```


>All the above steps are included in the [build.sh](build.sh) file. To use it:
>```
>sudo chmod +x build.sh
>```
>```
>./build.sh
>```


## Support
If you want some help with this work contact me: guilherme.turatto@gmail.com
