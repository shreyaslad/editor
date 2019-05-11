; main.asm
; Copyright 2019 Shreyas Lad (PenetratingShot

;Holds the calls for subroutines. ./code/ directory contains files which contain mentioned subroutines

%include "init.asm"
%include "read.asm"

extern convert

section .text
    global _start

_start:
    call _printTitles
    call _printOptions

    call _getChoice

    ;int eax = convert(choice)
    mov rbx, [choice]
    push rbx
    call convert
    mov r12b, [choice]
    cmp r12b, i
    je _readFile

    mov rax, 60
    mov rdi, 0
    syscall