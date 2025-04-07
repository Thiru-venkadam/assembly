# x86_64 Assembly
Here, I used Windows subsystem for linux and Netwide Assembler to write code on x86_64 processor architecture

## To create an object file from an asm file:
        nasm -f elf64 -o program.o program

## To create the executable file from an object file:
        ld -o program program.o

## To run the executable file:
        ./program
