.model small
.stack 100h
.data
.code
main proc
    
    mov cx,26
   
    mov bx,65
   
    lab1:
        
    mov dx,bx    
    mov ah,2
    int 21h 
   
     mov dx,10
     mov ah,2
     int 21h
     mov dx,13
     mov ah,2
     int 21h 
   
    inc bx 
    
    
    
    loop lab1
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    