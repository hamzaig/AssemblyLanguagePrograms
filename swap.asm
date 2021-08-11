.model small
.stack 100h
.data
num1 db ?
num2 db ?
.code
main proc
   mov ah,1
   int 21h
   add al,48
   mov num1,al
   
   mov ah,1
   int 21h
   add al,48
   mov num1,al
   
   mul num1
   
   aam     
   
   sub ah,48
   sub ah,48
   
   mov bx,ax
   
   mov ah,2
   mov dl,bh
   int 21h
   
   mov ah,2
   mov dl,bl
   int 21h
   
   mov ah,4ch
   int 21h
   
main endp
end main

    
    