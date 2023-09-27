.model small
.stack 100h

.data

.code
mov bh, 10001111b

xor ax,ax
mov cx,8

TOP:
    rol bh,1
    jc NEXT
    inc ax 
    
NEXT:
    LOOP TOP