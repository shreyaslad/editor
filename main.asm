%include "init.asm"

section .text
    global _start

_start:
  call _printTitles

  mov rax, 60       ; exit(
  mov rdi, 0        ;   EXIT_SUCCESS
  syscall           ; );