#!/bin/bash

# Arqument yoxlanışı
if [ -z "$1" ]; then
    echo "İstifadə qaydası: $0 <decimal_number>"
    exit 1
fi

dec_num=$1

# 8-bit zero-padded binary formatına çevirmə
printf "%08d\n" "$(echo "obase=2; $dec_num" | bc)"
