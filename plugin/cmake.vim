let g:cmake_program="cmake"
command! CMakeConfigure call termopen('cmake -S . -B build')
command! CMakeBuild call termopen('cmake --build build')


