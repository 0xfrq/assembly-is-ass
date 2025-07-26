bits 32
global _start

section .text
_start:
    mov eax, 0xCAFEBABE
    mov bl, al
    mov bh, 0x42

; syscall exit
    mov eax, 1
    xor ebx, eax
    int 0x80
