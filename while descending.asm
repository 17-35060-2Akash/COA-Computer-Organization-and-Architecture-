.model small
.stack 100h
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    
    
    while:
    cmp bl,'0'
    je exit:
    
    mov ah,2
    mov dl,bl
    int 21h
    
    dec bl
    jmp while: 
    
    exit: