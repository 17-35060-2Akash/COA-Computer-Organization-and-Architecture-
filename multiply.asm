.model small
.stack 100h
.code

main proc
    
    mov al,3
    mov bl,2
    
    mul bl 
    add al,48
    
    mov ah,2
    mov dl,al
    int 21h
    
    
