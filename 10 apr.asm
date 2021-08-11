.model small
.stack 100h
.data  
a db 'Hamza ali$'
b db 'khalid singhaniya urff chachi420mb$'
.code
    main proc
     
     mov ax,@data
     mov ds,ax
     
     lea dx,a
     mov ah,9
     int 21h
     
     mov dx,10
     mov ah,2
     int 21h
     mov dx,13
     mov ah,2
     int 21h  
     
   
     lea dx,b
     mov ah,9
     int 21h
     
 
        
      
        
        main endp
    end main