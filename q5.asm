.model small

.data
    dizi dw 0001h, 0003h, 0013h, 0015h, 0021h
.code
.startup
    mov di, 0
    mov ax, 0
    mov bx, 0
    mov cx, 5
dongu:
    mov ax, dizi[di]
    add bx, ax
    add di, 2
    loop dongu
.exit
end
