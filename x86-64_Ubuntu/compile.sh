#!/bin/bash

 nasm -f elf64 array.asm
 ld -s -o array array.o
 ./array
