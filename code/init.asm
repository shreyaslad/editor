; init.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

; This file is for hosting the subroutines called at the start of the program, such as printing the title, subtitle, and prompting the user
section .rodata
    title db "Welcome to Ed1t", 0xa
    titleLen equ $ - title

    subTitle db "Enter the number that corresponds with the action you want to perform", 0xa, 0xa
    subTitleLen equ $ - subTitle

    option1 db "1. Read from a file", 0xa
    option1Len equ $ - option1

    option2 db "2. Write to a file", 0xa
    option2Len equ $ - option2

    option3 db "3. Create a file", 0xa
    option3Len equ $ - option3

    option4 db "4. Create and Write to a file", 0xa
    option4Len equ $ - option4

    option5 db "5. Create a directory", 0xa
    option5Len equ $ - option5

    option6 db "6. Remove a directory", 0xa, 0xa
    option6Len equ $ - option6

    choicePrompt db "Enter your choice: ", 0
    choicePromptLen equ $ - choicePrompt

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

_printOptions:
    mov rax, 1
    mov rdi, 1
    mov rsi, option1
    mov rdx, option1Len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, option2
    mov rdx, option2Len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, option3
    mov rdx, option3Len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, option4
    mov rdx, option4Len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, option5
    mov rdx, option5Len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, option6
    mov rdx, option6Len
    syscall

    ret

_getChoice: