# Intel MPI on Windows does not provide compiler wrappers for FindMPI.
file(TO_CMAKE_PATH "$ENV{LIBRARY_PREFIX}" _LIBRARY_PREFIX)

set(MPI_C_ADDITIONAL_INCLUDE_DIRS "${_LIBRARY_PREFIX}/include"
    CACHE STRING "MPI C additional include directories")
set(MPI_CXX_ADDITIONAL_INCLUDE_DIRS "${_LIBRARY_PREFIX}/include"
    CACHE STRING "MPI CXX additional include directories")
set(MPI_C_LIB_NAMES "IMPI" CACHE STRING "MPI C library name")
set(MPI_CXX_LIB_NAMES "IMPI" CACHE STRING "MPI CXX library name")
set(MPI_IMPI_LIBRARY "${_LIBRARY_PREFIX}/lib/impi.lib"
    CACHE FILEPATH "Intel MPI import library")

set(MPI_ASSUME_NO_BUILTIN_MPI TRUE CACHE BOOL "")
set(MPI_SKIP_COMPILER_WRAPPER TRUE CACHE BOOL "")
set(MPI_SKIP_GUESSING TRUE CACHE BOOL "")
