section .data
    hello db "hello world",0x0a
    hlen equ $ - hello
    bye db "goodbye", 0x0a
    blen equ $- bye
section .text
    global _start

_start:
    ;write var hello to stdout
    mov eax,4
    mov ebx,1
    mov ecx,hello
    mov edx,hlen  
    int 0x80
    ; jump to lv(leave) label 
    ;exits here
    jmp lv
    ;skipped but tries to write bye and exit
    mov eax,4
    mov ebx,1
    mov ecx,bye
    mov edx,blen
    int 0x80
    mov eax,1
    mov ebx,1
    int 0x80 
lv:
    ;exit prog
    mov eax,1
    mov ebx,1
    int 0x80 