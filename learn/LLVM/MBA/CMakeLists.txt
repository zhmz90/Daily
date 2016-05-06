set(LLVM_ROOT "" CACHE PATH "Root of LLVM install")

if(NOT EXISTS ${LLVM_ROOT}/include/llvm)
  message(FATAL_ERROR
    "LLVM_ROOT (${LLVM_ROOT}) is invalid")
endif()

list(APPEND CMAKE_PREFIX_PATH
  "${LLVM_ROOT}/share/llvm/cmake")
find_package(LLVM REQUIRED CONFIG)


