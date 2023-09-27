org 100h
.data
answer dw ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 20
    mov ax, 0
    mov bx, 100
    
summation:
    add ax, bx
    add bx, -5
    
    mov answer, ax
    loop summation
    end main