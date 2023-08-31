cmake_minimum_required(VERSION 3.26)
project(rhOS C)

set(CMAKE_C_STANDARD 23)

add_library(rhOS library.c)
add_executable (get_os get_os.c)

if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    target_compile_definitions(get_os PUBLIC "NIX")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    target_compile_definitions(get_os PUBLIC "OSX")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    target_compile_definitions(get_os PUBLIC "WIN")
endif()

install(TARGETS get_os)