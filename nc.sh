#!/bin/bash
if [ -z "$1" ]
then
echo -e "\e[91mYou must write parameter with name assembler file for compile >:("
else
echo -e "\e[93mI created executable file, and object file :)"

filename=$1
extension="${filename##*.}"
filename="${filename%.*}"

echo -e "\e[92m* Create object file \e[0mnasm -f elf64 -o $filename.o $filename.asm"
nasm -f elf64 -o $filename.o $filename.asm
echo -e "\e[92m* Compile file \e[0mld -o $filename $filename.o"
ld -o $filename $filename.o
echo -e "\e[92m* Run \e[0mld./$filename"
./$filename
fi
