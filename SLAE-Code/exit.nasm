;Filename:Execve-stack.nasm
;Author:Prateek Gianchandani
;Email: prateek.searchingeye@gmail.com


global _start

section .text

_start:
	mov eax, 0x1
	mov ebx, 0x10
	int 0x80


