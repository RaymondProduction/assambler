# Assembler practice

I try studying assembler coding for Linux. I tested code in Ubuntu 16.04

For compiling use command:

NASM:
```
nasm -f elf64 -o hello.o hello.asm
ld -o hello hello.o
./hello
```

FASM:
```
sudo apt install fasm
fasm -f elf64 hello2.asm -o hello2.o
fasm hello2.asm
fasm fasm-hello.asm 
```
