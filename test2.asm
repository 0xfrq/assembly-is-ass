bits 32
global _start

section .text
_start:
	mov ax, 0xABCD
	mov bl, al
	mov bh, ah
	mov ah, bl
	mov al, bh

	mov eax, 1
	xor ebx, eax
	int 0x80
