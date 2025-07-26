bits 32
global _start

section .text
_start:
	mov esi, 0x1
	mov eax, 0x2
	mov ebx, 0x3
	add eax, ebx
	add eax, eax
	mov esi, 0xFFFFFFFF
	add ebx, esi
	add esi, eax

	mov eax, 1
	xor ebx, eax
	int 0x80
