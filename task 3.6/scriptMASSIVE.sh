#!/bin/bash

declare -A configs=(
    [home]="~/.bashrc-home"
    [work]="~/.bashrc-work"
)

echo "Выберите конфигурационный файл (home/work):"
read choice

if [[ -n "${configs[$choice]}" ]]; then
    cp "${configs[$choice]}" ~/.bashrc
    echo "Переключено на ${configs[$choice]}"
else
    echo "Неверный выбор. Пожалуйста, выберите 'home' или 'work'."
fi
