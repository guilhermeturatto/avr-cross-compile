add_library(usiTwiSlave "")

target_sources(usiTwiSlave
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/usiTwiSlave.h      
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/usiTwiSlave.c
)

target_include_directories(usiTwiSlave
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}
)


add_library(TinyWireS "")

target_sources(TinyWireS
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/TinyWireS.hpp      
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/TinyWireS.cpp
)

target_link_libraries(TinyWireS 
    PRIVATE
        usiTwiSlave
)

target_include_directories(TinyWireS
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}
)