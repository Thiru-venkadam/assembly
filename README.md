# x86 Assembly
Here, I used Windows subsystem for linux and Netwide Assembler to write code on x86-32 & x86-64 processor architecture

## 1) To create an object file from an asm file:
        nasm -f elf64 -o program.o program

## 2) To create the executable file from an object file:
### a) With linker
        ld -o program program.o
### b) With GCC
        gcc -no-pie program.o -o program

## 3)To run the executable file:
        ./program

## 4)To check the exit code:
        echo $?