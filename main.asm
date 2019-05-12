; main.asm
; Copyright 2019 Shreyas Lad (PenetratingShot)

;Holds the calls for subroutines. ./code/ directory contains files which contain mentioned subroutines

%include "init.asm"
%include "read.asm"

section .text
    global _start


_start:
    call _printTitles
    call _printOptions

    call _getChoice

    mov rbx, [choice + 48]
    cmp rdi, rbx
    je _readFile

    pop rdi
    mov rax, 60
    mov rdi, 0
    syscall