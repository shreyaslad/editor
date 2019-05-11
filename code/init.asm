; init.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

section .data
    title db "Welcome to Ed1t", 0xa
    titleLen equ $ - title

    subTitle db "Enter the number located next to the option that you want", 0xa,0xa
    subTitleLen equ $ - subTitle

_printTitle
    mov rax, 1
    mov rdi, 1
    mov rsi, title
    mov rdx, titleLen
    syscall

    push rax
    push rdi
    mov rsi, subTitle
    mov rdx, subTitleLen
    syscall
    ret