.model small
.stack 100h
.data
.code
    main proc
        
        mov ah,1
        int 21h
        
        mov bl,al 
        
        mov dl,'+'
        mov ah,2
        int 21h
        
        mov ah,1
        int 21h
        
        mov cl,al
        
        mov dl,'='
        mov ah,2
        int 21h
        
        add bl,cl
        
        mov dl,bl
        sub dl,48
        
        mov ah,2
        int 21h
        
        mov ah,4ch
        int 21h
        
        main endp
    end main