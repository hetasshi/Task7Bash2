#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Использование: $0 <каталог>"
    exit 1
fi

TARGET_DIR="$1"

if grep -RlZ "123" "$TARGET_DIR" | xargs -0 cp -t .; then
    echo "cp - OK"
else
    echo "cp - FAILS"
fi

if grep -RLZ "123" "$TARGET_DIR" | xargs -0 rm; then
    echo "rm - OK"
else
    echo "rm - FAILS"
fi
