bits 32
global _start

section .text
_start:
	mov al, 0x10
	mov bl, 0x22
	add al, bl
	mov ah, 0xf0
	mov bl, 0x10
	add ah, bl
	mov ax, 0xffff
	add ax, 1
	mov eax, 1
	xor ebx, eax
	int 0x80
