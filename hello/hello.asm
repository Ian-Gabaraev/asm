; hello world in i386 Assembly

; Author Ian Gabaraev
; Date 26-09-2021

global _start

section .text:

_start:
    mov eax, 0x4         ; the __NR_write syscall in unistd_32.h
    mov ebx, 1           ; stdout FD
    mov ecx, message
    mov edx, message_len

    int 0x80             ; trigger an interrupt

    mov eax, 0x1         ; the __NR_exit syscall in unisted_32.h
    mov ebx, 0

    int 0x80



section .data:
    message: db "Hello World", 0xA
    message_len equ $-message
