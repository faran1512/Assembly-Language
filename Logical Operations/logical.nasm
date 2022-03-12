SECTION .data
  var1 db 10d
  var2 db 20d
  EXIT_STATUS equ 54
SECTION .bss
  ;Nothing here
SECTION .text
  global _start
  _start:
    ;AND operation to check whether a number is even or odd
    mov al, 23d
    and al, 01h

    ;OR operation to convert an upper case letter to lower case
    mov al, 90d ;90 is ASCII of Z
    or al, 20h  ;making 6th bit which represents 32d, on

    ;NOT operartion
    mov al, 27d
    not al

    ;XOR operation to convert upper case letter to lower and vice versa
    mov al, 90d
    xor al, 20h

    ;TEST operation to check if nnumber is positive or negative
    mov al, 65d
    test al, 80h ;if ZF=1 then the number is positive, otherwise the number is negative

    mov rax, 60 
    mov rdi, EXIT_STATUS
    syscall
