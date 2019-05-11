%include "init.asm"

section .text
    global _start

_start:
    call _printTitles
    call _printOptions

     mov rax, 60
     mov rdi, 0
     syscall