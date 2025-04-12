section .text
    global main     ;we need to use main instead of _start label when using gcc for object file creation

main:
    mov rax,21      ;put 21 in rax
    mov rbx,rax     ;copy rax to rbx
    
    ;exiting using system call
    mov rax,60      ;syscall:exit 
    mov rdi,rbx     ;set exit status as 21
    syscall         ;syscall
section .note.GNU-stack noalloc noexec      ;Bypass warnings from gcc