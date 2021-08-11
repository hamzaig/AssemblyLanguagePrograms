;input a character from keyboard and print it
.model small
.stack 100h
.data
.code
    main proc
        
        mov ah,1
        int 21h
        
        mov dl,al 
        
        mov ah,1
        int 21h
        
        mov bl,al
        
        add dl,bl
        
        sub dl,48
        
        mov ah,2
        int 21h
        
        
    main endp
end main