.model small
.stack 100h
.data
.code
main proc
    mov cx,10
    mov bx,48
    
    label: 
    
    mov dx,bx
    mov ah,2
    int 21h 
    
    mov dx,10
    int 21h
    mov dx,32
    int 21h
    
    add dx,1  
    
    loop label
    
    mov ah,4ch
    int 21h
    
   main endp
end main     



;Rule No.1 A Label can be placed at the begining of the statement because the label is assign the current value of the line (Label Rule)
    ;Rule no 1. Label Must not be a Resereve Word e.g mov add sub
    ;3. colon must be used with the label while initilaizing but not while calling 
    ;4. 