.model small
.stack 100h
.data
msg1 db "............................. Hidden Number Game ..............................$"
msg2 db "Enter Number: $" 
msg3 db "Congradulation You Won!$"
msg4 db "Sorry You Enter Wrong Number To Continue Pree Y or N : $"
msg5 db "You Loss And Your Game Is End$"

.code 

main proc

mov cx,1000 
  
mov ax,@data
mov ds,ax

lea dx,msg1
mov ah,9
int 21h    

l7:
mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

lea dx,msg2
mov ah,9
int 21h

mov dl,'7'
    
mov ah,1
int 21h 

cmp al,dl

je l1
jne l2

l1:
  
mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

lea dx,msg3
mov ah,9
int 21h  

mov ah,4ch
int 21h 

l2:

l3:

mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

lea dx,msg4
mov ah,9
int 21h 

mov ah,1
int 21h

cmp al,'y'

jne l6
je l7

loop l3 

mov ah,4ch
int 21h

l6:
mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h
lea dx,msg5
mov ah,9
int 21h  
mov ah,4ch
int 21h  

main endp
end main
