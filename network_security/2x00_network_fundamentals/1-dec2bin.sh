#!/bin/bash
dec_num=$1
printf "%08d\n" "$(echo "obase=2; $dec_num" | bc)"
