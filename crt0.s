    .file   "crt0.s"
    .text
    .globl  _start
_start:
    mov %rsp, %rbp
    mov 0(%rbp), %rdi
    lea 8(%rbp), %rsi
    mov 16(%rbp), %rdx
    call main
    mov %rax, %rdi
    mov $60, %rax
    syscall
