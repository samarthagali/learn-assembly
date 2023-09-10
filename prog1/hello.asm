section .data
    message db "hello world",0x0a ; double byte string terminated by null 
    len equ $ - message ; length of message

section .text
    global _start 

_start: ;entry point
    mov eax,4  ; write syscall
    mov ebx,1  ;write to stdout
    mov ecx,message ;message
    mov edx,len; length
    int 0x80
;exit
    mov eax,1
    mov ebx,1
    int 0x80
