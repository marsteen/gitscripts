#!/bin/sh
find $1 \( -name "*.h" \
       -o -name "*.cpp" \
       -o -name "*.c" \
       -o -name "makefile*" \
       -o -name "*.hpp" \
       -o -name "CMakeLists.txt" \
       -o -name "*.sh" \
       \) -exec git add {} \;
       
