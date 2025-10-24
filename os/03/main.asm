org 0x101

mov ah, 0x0E
mov al, [data_is_here]
int 0x10

mov ax, 0x4C00
int 0x21

data_is_here:
	db "X"


