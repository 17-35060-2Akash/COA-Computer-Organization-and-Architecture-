.model small
.stack 100h
.data
msg1 db 0Ah,0Dh, 'Greater than 5  $'
msg2 db 0Ah,0Dh,'equal to 5 $'
msg3 db 0Ah,0Dh,'less than 5 $'

main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,53
    je L1
    jg L2
    jmp L3

    
   L1:
   mov ah,9
   lea dx,msg2
   int 21h
   jmp exit:
    
    L2:
   mov ah,9
   lea dx,msg1
   int 21h
   jmp exit:
  
   L3:
   mov ah,9
   lea dx,msg3
   int 21h
   jmp exit:  
   
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    

