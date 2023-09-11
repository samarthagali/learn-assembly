section .text
    global _start

_start:
    ; push byte 'I'
    ; push byte 'H'
    ;push op, dec esp
    sub esp,4
    mov [esp],  byte 'I'
    mov [esp+1], byte 'H'
    mov eax,4
    mov ebx,1
    ; pop op
    mov ecx, esp
    mov edx,4
    int 0x80
    ; reset esp (inc esp)
    add esp,4
    mov eax,1
    mov ebx,0
    int 0x80
