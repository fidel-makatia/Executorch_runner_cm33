cmake_minimum_required(VERSION 3.22.0)

include(${SdkRootDirPath}/cmake/extension/mcux.cmake)

# Change to use C++ since ExecuTorch needs it
project(executorch_runner LANGUAGES C CXX ASM PROJECT_BOARD_PORT_PATH ${board_root}/${board}/demo_apps/hello_world)

include(${SdkRootDirPath}/CMakeLists.txt)

# Remove or comment out the hello_world.c
# mcux_add_source(
#     BASE_PATH ${SdkRootDirPath}
#     SOURCES examples/demo_apps/hello_world/hello_world.c
# )

# Add ExecuTorch source files
mcux_add_source(
    BASE_PATH ${CMAKE_CURRENT_SOURCE_DIR}
    SOURCES
        source/arm_executor_runner.cpp
        source/arm_memory_allocator.cpp
        source/rsc_table.c
)

# Add include directories for ExecuTorch
target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/include
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/include/executorch
    ${CMAKE_CURRENT_SOURCE_DIR}/source
)

# Add ExecuTorch static libraries
target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/lib/libexecutorch_delegate_ethos_u.a
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/lib/libexecutorch.a
    ${CMAKE_CURRENT_SOURCE_DIR}/executorch/lib/libexecutorch_core.a
    m   # math library
    stdc++  # C++ standard library
)

# Add compile definitions for ExecuTorch
target_compile_definitions(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ET_ARM_BAREMETAL_METHOD_ALLOCATOR_POOL_SIZE=0x4000    # 16KB
    ET_ARM_BAREMETAL_SCRATCH_TEMP_ALLOCATOR_POOL_SIZE=0x2000  # 8KB
    ET_MODEL_PTE_ADDR=0xC0000000
)

# Set C++ standard
set_target_properties(${MCUX_SDK_PROJECT_NAME} PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
)

# Add C++ specific compiler flags
target_compile_options(${MCUX_SDK_PROJECT_NAME} PRIVATE
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-threadsafe-statics>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-format>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=deprecated-declarations>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=switch>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=unused-variable>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=unused-but-set-variable>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=sign-compare>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error>
)

include(${SdkRootDirPath}/${board_root}/${board}/demo_apps/hello_world/reconfig.cmake OPTIONAL)

mcux_convert_binary(BINARY ${APPLICATION_BINARY_DIR}/${MCUX_SDK_PROJECT_NAME}.bin)
