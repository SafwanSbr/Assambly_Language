.model small
.stack 100h
.data
m db "?$"
a dw ?
b dw ?
c dw ?
 
.code
mov ax, @data
mov ds, ax 
 
mov ah,9
lea dx, m
int 21h  

MOV AH, 2
MOV DL, 0AH
INT 21H
MOV DL, 0DH
INT 21H
 
mov ah,1
int 21h
mov a, ax
 
mov ah,1
int 21h
mov b, ax
 
mov ah,1
int 21h
mov c, ax
 
mov cx,a
 
cmp cx,b
ja a_big_1
jmp if_ac
 
a_big_1:
xchg b,cx
mov a,cx
 
if_ac:
mov cx,a
 
cmp cx,c
 
ja a_big_2
jmp if_bc
 
a_big_2:
xchg c,cx
mov a,cx
 
if_bc:
mov cx,b
 
cmp cx,c
 
ja b_big
jmp print
 
b_big:
xchg c,cx
mov b,cx
 

 
 
print: 
MOV AH, 2
MOV DL, 0AH
INT 21H
MOV DL, 0DH
INT 21H
 
mov ah,2
mov dx,a
int 21h
 
mov dx,b
int 21h
 
mov dx,c
int 21h