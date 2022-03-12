SECTION .data
  msg db "Hello World", 0xa
  msg_len equ $ - msg
  EXIT_STATUS equ 54
SECTION .bss
  ;nothing in here
SECTION .text
  global _start
  _start:                 ;_start for ld, main for gcc
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msg_len
    syscall 

    mov rax, 60
    mov rdi, EXIT_STATUS
    syscall