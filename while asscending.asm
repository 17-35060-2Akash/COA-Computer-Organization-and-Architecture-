.model small
.stack 100h
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov cl,'1'
    
    while:
    cmp cl,bl
    jg exit:
    
    mov ah,2
    mov dl,cl
    int 21h
    
    inc cl
    jmp while: 
    
    exit: