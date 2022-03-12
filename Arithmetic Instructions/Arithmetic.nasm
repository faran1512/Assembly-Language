SECTION .data
  EXIT_STATUS equ 54
  var1 db 10d
  var2 db 20d
SECTION .bss
  ;nothing here
SECTION .text
  global _start               ;_start for ld, main for gcc
  _start:
    add byte [var1], 30d
    mov rax, 1
    mov rdi, 1
    mov rsi, var1
    mov rdx, 10d
    syscall

    mov rax, 60
    mov rdi, EXIT_STATUS
    syscall