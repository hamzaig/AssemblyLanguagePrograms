.model small
.stack 100h
.data
msg1 db "You Enter A Odd Number$"
msg2 db "You Enter A Even Number$" 
msg3 db "Please Enter The Value From Range 1 To 5$"
.code 

main proc

mov ax,@data
mov ds,ax

mov ah,1
int 21h

cmp al,'1'
je odd

cmp al,'2'
je even

cmp al,'3'
je odd

cmp al,'4'
je even

cmp al,'5'
je odd

mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

mov dx,offset msg3
mov ah,9
int 21h

mov ah,4ch
int 21h

odd:


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

even: 

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
