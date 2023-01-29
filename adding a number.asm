.model small
.stack 100h
.data

msg db 'Enter a number: $'
msg1 db 'After adding 5 the number is: $'

.code

main proc 
    mov ax, @data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
      
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h 
    
    add bl,5
    int 21h
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main



