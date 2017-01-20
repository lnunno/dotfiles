# Build aliases
alias makefast="make -j8"
export CLANG_CXX="/usr/bin/clang++"
alias cppfmt="clang-format -style=file -i"

# CMake aliases
alias cmake-debug="cmake -D CMAKE_BUILD_TYPE=Debug"
alias cmake-eclipse="cmake -G \"Eclipse CDT4 - Unix Makefiles\" -D CMAKE_BUILD_TYPE=Debug"
alias cmake-clean="rm -Rf CMakeFiles *.cmake bin/* CMakeCache.txt"
alias cmake-clang++="cmake -DCMAKE_CXX_COMPILER=$CLANG_CXX"
alias cmake-dev="cmake -G \"Eclipse CDT4 - Unix Makefiles\" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_EXPORT_COMPILE_COMMANDS=1"
