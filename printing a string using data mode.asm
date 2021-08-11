.model small
.stack 100h
.data

var1 db  'Enter A Lower Case Character: $'

.code
    main proc
        
        mov ax,@data
        mov ds,ax
        
        lea dx,var1
        mov ah,9
        int 21h 
        
        mov ah,1
        int 21h
        
    main endp

end main