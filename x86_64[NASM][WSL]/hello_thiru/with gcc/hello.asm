section .data
msg db "Hello Thiru!"
section .text
global main
main:
mov rax,1
mov rdi,1
mov rsi,msg
mov rdx,12
syscall
mov rax,60
mov rdi,0
syscall
section .note.GNU-stack noalloc noexec

