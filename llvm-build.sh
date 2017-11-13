cmake -G 'Unix Makefiles' \
        -DLLVM_TARGETS_TO_BUILD:STRING="BPF" \
        -DCMAKE_BUILD_TYPE:STRING=Release \
        -DLLVM_BUILD_TOOLS:BOOL=OFF \
        -DLLVM_INCLUDE_TESTS:BOOL=OFF \
        ".."
