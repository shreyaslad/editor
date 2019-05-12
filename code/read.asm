; read.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

; Hold the logic for reading from files
section .bss
    fileName: resb 20
    text: resb 100

section .rodata
    promptFileName db "Filename: "
    promptFileNameLen equ $ - promptFileName
    fileNameDB db "./code/text.txt", 0

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

    ; open the file
    mov rax, 2
    mov rdi, fileName
    mov rsi, 0 ;readonly
    mov rdx, 0644o ;file perms
    syscall

    ;read from the file
    push rax
    mov rdi, rax
    mov rax, 0
    mov rsi, text ;this is temporary, just to make sure that the read works. malloc will be used in the future
    mov rdx, 100
    syscall

    ; close the file
    mov rax, 3
    pop rdi
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 100
    syscall

    ret