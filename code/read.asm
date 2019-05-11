; read.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

; Hold the logic for reading from files

section .rodata
    work db "You chose option 1"
    workLen equ $ - work

_readFile:
    mov rax, 1
    mov rdi, 1
    mov rsi, work
    mov rdx, workLen
    syscall
    ret