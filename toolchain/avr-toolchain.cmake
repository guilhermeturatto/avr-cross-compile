#Name of target OS (to embedded systems without OS, set as "Generic")
set(CMAKE_SYSTEM_NAME Generic)

#Wich C and C++ compiler to use
set(CMAKE_C_COMPILER avr-linux-gcc)
set(CMAKE_CXX_COMPILER avr-linux-g++)

#Location of the target environment
set(CMAKE_FIND_ROOT_PATH /avr/avr)

#Adjust the default behavior of the FIND_XXX() commands:
#Search for programs in the host environment
#Search for headers and libraries in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
