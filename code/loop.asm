org 100h
.data
    a db ?
 
.code
main proc 
	
    mov ah, 1
    int 21h
    mov a, al
 
    mov ah, 2
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
 
    mov cx, 50
 
    Print:
        mov ah, 2
        mov dl, a
        int 21h
    loop Print    
 
    end main