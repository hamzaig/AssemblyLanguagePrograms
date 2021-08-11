.model small
.stack 100h
.data
.code
main proc
    
    mov cx,26
   
    mov dx,65
   
    lab1:
     
    mov ah,2
    int 21h 
    
    inc dx
    
    loop lab1
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    