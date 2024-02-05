.model small

.data
    dizi_1 dw 12h, 01h, 03h, 255, 25, 45, 33, 88, 15h, 02h
    dizi_2 dw 21h, 1Ah, 03h, 11, 15, 17, 52, 56, 04h, 10h
    array dw 10 dup(0)
    adet db 10

.code
.startup
    mov di, 0
    mov cl, adet

dongu:
    mov ax, dizi_1[di]
    mov bx, dizi_2[di]
    add ax, bx
    mov array[di], ax
    add di, 2
    dec cx
    loop dongu

.exit
end
    

