cmake_minimum_required(VERSION 3.20)

set(FOLDER_STEM "")
cmake_path(GET CMAKE_SOURCE_DIR STEM FOLDER_STEM)

project("${FOLDER_STEM}" VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(
    SRC_FILES

)

add_executable(${PROJECT_NAME} ${SRC_FILES})