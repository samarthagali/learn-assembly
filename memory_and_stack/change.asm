section .data
    string db "hello!",0x0a
    strlen equ $ - string
    change db "after change is",0x0a
    chlen equ $ - change
section .text
    global _start

_start:
    mov eax,4
    mov ebx,1 
    mov ecx,string
    mov edx,strlen
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,change
    mov edx,chlen
    int 0x80 

    mov [string],byte 'B'
    mov[string+2], byte 0x0a
    mov eax,4
    mov ebx,1
    mov ecx,string
    mov edx,strlen
    int 0x80;

    mov eax,1
    mov ebx,0
    int 0x80
