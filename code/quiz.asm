.model small
.stack 100h
.data
msg1 db 'ABC',0ah,0dh,'$' 
msg2 db 'PQR',0ah,0dh,'$'
msg3 db 'XYZ',0ah,0dh,'$'
msg4 db 'THANK YOU',0ah,0dh,'$'
msg5 db 'THE END$'
.code
mov ax,@data
mov ds,ax
mov bh,'2'
cmp bh,30h
mov ah,9
lea dx,msg1
int 21h
l1:
mov dl,'*'
mov ah,2
int 21h
mov dl,10
int 21h
mov dl,13
int 21h
dec cl
jnz l1
jmp l4
l2:
mov ah,9
lea dx,msg2
int 21h    
mov cl,5
jmp l1
l3:
mov ah,9
lea dx,msg3
int 21h    
jmp l5
l4:
mov ah,9
lea dx,msg4
int 21h    
jmp end_
l5:
mov ah,9
lea dx,msg5
int 21h    
end_: 
mov ah,4ch
int 21h