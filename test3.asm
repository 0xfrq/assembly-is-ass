bits 32
global _start

section .text
_start:
	mov eax, 0x00000000
	mov ah, 0xDE
	mov al, 0xAD
	mov cl, 16
	shl eax, cl

	mov ah, 0xBE
	mov al, 0xEF

	mov eax, 1
	xor ebx, eax
	int 0x80
