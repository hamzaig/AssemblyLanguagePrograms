.model small
.stack 100h
.data
msg1 db "You Enter Wrong Number$"
msg2 db "You Enter Correct Number$" 
msg3 db "Good$"
msg4 db "Bad$"
.code 

main proc

mov ax,@data
mov ds,ax

mov dl,'3'

mov ah,1
int 21h

cmp al,dl

je l1

mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

mov dx,offset msg4
mov ah,9
int 21h


mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

mov dx,offset msg1
mov ah,9
int 21h


mov ah,4ch
int 21h 
  
l1: 

mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

mov dx,offset msg3
mov ah,9
int 21h

mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

mov dx,offset msg2
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
