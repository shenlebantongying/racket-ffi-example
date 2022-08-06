cmake_minimum_required(VERSION 3.24)
project(racket_ffi_mini C)

set(CMAKE_C_STANDARD 23)


add_library(rac SHARED library.c)
message(${CMAKE_SOURCE_DIR})
install(TARGETS rac
        LIBRARY  DESTINATION ${CMAKE_SOURCE_DIR})

