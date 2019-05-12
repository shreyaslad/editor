; read.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

; Hold the logic for reading from files
section .bss
    fileName: resb 20

section .rodata
    promptFileName db "Filename: "
    promptFileNameLen equ $ - promptFileName

_readFile:
    mov rax, 1
    mov rdi, 1
    mov rsi, promptFileName
    mov rdx, promptFileNameLen
    syscall

    mov rax, 0
    mov rdi, 0
    mov rsi, fileName
    mov rdx, 20
    syscall

    ret