#!/bin/bash

dir1="dir1"
dir2="dir2"

echo "Файлы в $dir1, которых нет в $dir2:"
comm -13 <(ls "$dir1" | sort) <(ls "$dir2" | sort)

echo "Файлы в $dir2, которых нет в $dir1:"
comm -23 <(ls "$dir1" | sort) <(ls "$dir2" | sort)
