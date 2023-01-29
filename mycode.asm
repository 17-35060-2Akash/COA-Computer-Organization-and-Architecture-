.model small
.stack 100h
.data

A db 5
B db ?
msg1 db 'I am IRON MAN $'
msg2 db  ?

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov b,al
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    
    mov ah,2
    mov dl,A
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,B
    int 21h
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    
    mov ah,1
    int 21h
    mov msg2,al 
    
    
    
    mov ah,9
    lea dx,msg1
    int 21h
    lea dx, msg2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main