.model small

.data
    array db 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
.code
.startup
    mov di, 0
    mov si, 9
    mov cx, 4
    mov ax, 0
    mov ah, array[di]
    mov al, array[si]
dongu:
    mov bh, array[di+1]
    mov array[di], bh
    mov bl, array[si-1]
    mov array[si], bl
    inc di
    dec si
    loop dongu
    mov array[si], ah
    mov array[di], al
.exit
end
