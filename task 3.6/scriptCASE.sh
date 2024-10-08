#!/bin/bash

echo "Выберите конфигурационный файл (home/work):"
read choice

case $choice in
    home)
        cp ~/.bashrc-home ~/.bashrc
        echo "Переключено на .bashrc-home"
        ;;
    work)
        cp ~/.bashrc-work ~/.bashrc
        echo "Переключено на .bashrc-work"
        ;;
    *)
        echo "Неверный выбор. Пожалуйста, выберите 'home' или 'work'."
        ;;
esac
