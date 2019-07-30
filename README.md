# Assembler practice

I try studying assembler coding for Linux. I tested code in Ubuntu 16.04

For compiling use command:
```
nasm -f elf64 -o hello.o hello.asm
ld -o hello hello.o
./hello
```