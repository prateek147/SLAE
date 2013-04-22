;Filename:Execve-stack.nasm
;Author:Prateek Gianchandani
;Email: prateek.searchingeye@gmail.com


global _start

section .text

_start:
	xor eax,eax
	mov al, 0x1
	xor ebx,ebx
	mov bl, 0x10
	int 0x80


