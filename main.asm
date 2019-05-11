; main.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

; Main file for calling subroutines from other files in ./code/
; Will also be used to create buffers

%include "init.asm"

section .text
    global _start

_start:



    mov rax, 60
    mov rsi, 0
    syscall