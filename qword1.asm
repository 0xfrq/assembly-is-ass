bits 32
global _start

section .text
_start:
	mov edi, 0xAB29FFFF
	mov ecx, 0x00000703
	mov eax, 0x000000FF
	add al, ch
	add di, cx
	mov edi, 0xAB29FFFF
	add edi, ecx

	mov eax, 1
	xor ebx, eax
	int 0x80
