; init.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

; This file is for hosting the subroutines called at the start of the program, such as printing the title, subtitle, and prompting the user
section .rodata
    title db "Welcome to Ed1t", 0xa
    titleLen equ $ - title

    subTitle db "Enter the number that corresponds with the action you want to perform", 0xa
    subTitleLen equ $ - subTitle

_printTitles:
    mov rax, 1        ; write(
    mov rdi, 1        ;   STDOUT_FILENO,
    mov rsi, title      ;   "Hello, world!\n",
    mov rdx, titleLen   ;   sizeof("Hello, world!\n")
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, subTitle
    mov rdx, subTitleLen
    syscall

    ret

