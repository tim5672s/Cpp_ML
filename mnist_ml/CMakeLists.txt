cmake_minimum_required(VERSION 3.12)

set(PROJECT "mnist_ml")

project("${PRJOECT}" VERSION 1.0.0 LANGUAGES CXX)

add_library(data_handler OBJECT     ${PROJECT_SOURCE_DIR}/src/data_handler.cpp)
add_library(data         OBJECT     ${PROJECT_SOURCE_DIR}/src/data.cpp)
add_library(knn         OBJECT      ${PROJECT_SOURCE_DIR}/src/knn.cpp)
add_library(setter      OBJECT      ${PROJECT_SOURCE_DIR}/src/setter.cpp) 

include_directories(data_handler    ${PROJECT_SOURCE_DIR}/include/)
include_directories(data            ${PROJECT_SOURCE_DIR}/include/)  

add_executable("${PROEJCT}_Executable" ${PROJECT_SOURCE_DIR}/app/main.cpp)
target_link_libraries("${PROEJCT}_Executable" data_handler)
target_link_libraries("${PROEJCT}_Executable" data)
target_link_libraries("${PROEJCT}_Executable" knn)
target_link_libraries("${PROEJCT}_Executable" setter)