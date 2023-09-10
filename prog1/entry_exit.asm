global _start

_start:
	mov eax,1 ;system call sys_exit
	mov ebx,42 ;exit status
	int 0x80 ; interrupt with 80 (interrupt handler for syscall)

