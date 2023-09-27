.model small
.stack 100h

.data

.code
mov ax, 2244h
mov bx, 1234h
mov cx, 1122h

push ax
push bx
pop ax
push cx
push ax
pop bx
pop cx