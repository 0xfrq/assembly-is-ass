bits 32
global _start

section .text
_start:
    mov eax, 0x12345678
    mov ah, 0x42
    mov al, ah
    mov bx, ax
    shl eax, 16
    mov ax, bx

    ; syscall: exit(0)
    mov eax, 1      ; syscall number for exit
    xor ebx, ebx    ; status = 0
    int 0x80
