cmake_minimum_required(VERSION 3.16)
project(OraclePass)

# 1. Find LLVM
find_package(LLVM REQUIRED CONFIG)
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# 2. Build standard CMake shared library (bypassing LLVM's strict macros)
add_library(OraclePass MODULE
    OraclePass/OraclePass.cpp
    OraclePass/Z3Encoder.cpp
)

# 3. Force it to be a .so file without the "lib" prefix 
# (so it outputs OraclePass.so instead of libOraclePass.so)
set_target_properties(OraclePass PROPERTIES
    PREFIX ""
    SUFFIX ".so"
)

# 4. Link the Z3 Theorem Prover
target_link_libraries(OraclePass PUBLIC z3)