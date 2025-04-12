section .data
num1 dq 25
num2 dq 25
msg1 db "num1 + num2 = num3!!",10
msg2 db "num1 + num2 != num3!!",10
msg3 db "Program exited successfully",10
section .text
global _start

_start:
mov rax,[num1]
mov rbx,[num2]
add rax,rbx

cmp rax,50
je .equal
jmp .notequal

.equal:
mov rax,1
mov rdi,1
mov rsi,msg1
mov rdx,21
syscall
jmp .exit

.notequal:
mov rax,1
mov rdi,1
mov rsi,msg2
mov rdx,22
syscall
jmp .exit

.exit:
mov rax,1
mov rdi,1
mov rsi,msg3
mov rdx,29
syscall
mov rax,60
mov rdi,0
syscall
