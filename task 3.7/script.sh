#!/bin/bash

# однобайтовые целые
result1=$((79 + 256 - 46))
result2=$((-97 + 256 + 96))

# двухбайтовые целые
result3=$((12868 + 65536 - 1219))

# вывод
echo "79 + (-46) = $result1"
echo "-97 + 96 = $result2"
echo "12868 + (-1219) = $result3"
