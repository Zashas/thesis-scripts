# Follow instructions https://clang.llvm.org/get_started.html

# replace cmake in step 7 by :

cmake -G 'Unix Makefiles' \
        -DLLVM_TARGETS_TO_BUILD:STRING="BPF" \
        -DCMAKE_BUILD_TYPE:STRING=Release \
        -DLLVM_BUILD_TOOLS:BOOL=OFF \
        -DLLVM_INCLUDE_TESTS:BOOL=OFF \
        ".."
