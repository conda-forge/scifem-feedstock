@echo on

set "CMAKE_GENERATOR=Ninja"
set "CMAKE_GENERATOR_PLATFORM="
set "CMAKE_GENERATOR_TOOLSET="
set "SKBUILD_CMAKE_ARGS=-DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%;-DCMAKE_TOOLCHAIN_FILE=%RECIPE_DIR%\impi-toolchain.cmake;-DPython3_FIND_STRATEGY=LOCATION"

"%PYTHON%" -m pip install --no-build-isolation --no-deps -vv .
if errorlevel 1 exit /b 1
