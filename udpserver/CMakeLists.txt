cmake_minimum_required(VERSION 3.10)
project(chat)
add_executable(chat udpserver.c)
target_link_libraries(chat pthread)
