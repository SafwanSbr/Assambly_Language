.model small
.stack 100h
.data
qu db "?$"
a db ?
b db ?
c db ?  

m1 db "EVEN",0AH,0DH,'$'
m2 db "ODD",0AH,0DH,'$'
m3 db "INVALID",0AH,0DH,'$'
 
.code
mov ax, @data
mov ds, ax   

mov ah,1
int 21h
mov a,al

mov ah,1
int 21h
mov b,al

cmp a,"1"
je ODD 
cmp a,"3"
je ODD   
cmp a,"5"
je ODD  
cmp a,"2"
je EVEN
cmp a,"4"
je EVEN

ODD:
cmp b,"1"
je PRINT_ODD 
cmp b,"3"
je PRINT_ODD   
cmp b,"5"
je PRINT_ODD 
cmp b,"2"
je PRINT_INVALID
cmp b,"4"
je PRINT_INVALID

EVEN:
cmp b,"1"
je PRINT_INVALID 
cmp b,"3"
je PRINT_INVALID   
cmp b,"5"
je PRINT_INVALID 
cmp b,"2"
je PRINT_EVEN
cmp b,"4"
je PRINT_EVEN

PRINT_EVEN:
MOV AH, 2
MOV DL, 0AH
INT 21H
MOV DL, 0DH
INT 21H

MOV AH,9
LEA DX,M1
INT 21H
jmp EXIT

PRINT_ODD:
MOV AH, 2
MOV DL, 0AH
INT 21H
MOV DL, 0DH
INT 21H

MOV AH,9
LEA DX,M2
INT 21H 
jmp EXIT

PRINT_INVALID:
MOV AH, 2
MOV DL, 0AH
INT 21H
MOV DL, 0DH
INT 21H

MOV AH,9
LEA DX,M3
INT 21H 
jmp EXIT

EXIT:
mov ah,4ch
int 21h





















































 
