.model small
.stack 100h
.code
.data

msg db 'The uppercase to lowercase letter: $'

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    
    mov ah,9
    lea dx,msg
    
    add bl,32 
    
    mov ah,2
    mov dl,bl
    int 21h
     
    
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
