add_executable(mainI2C Tiny85_I2C_Slave_Ex.cpp)

add_subdirectory(include)

target_link_libraries(mainI2C 
    PRIVATE
		TinyWireS
)