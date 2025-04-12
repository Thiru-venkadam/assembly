section .text
    global _start

_start:
    mov rax,21      ;put 21 in rax
    mov rbx,rax     ;copy rax to rbx
    
    ;exiting using system call
    mov rax,60      ;syscall:exit 
    mov rdi,rbx     ;set exit status as 21
    syscall         ;syscall