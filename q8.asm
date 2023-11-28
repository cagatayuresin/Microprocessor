.model small

.data
    dizi dw 001Dh, 0001, 00C3h, 0015, 0023
    adet dw 5
.code
.startup
    mov di, 0
    mov cx, adet
    mov ax, 0
    mov bx, 0
dongu:
    mov ax, dizi[di]
    and ax, 0Fh
    add bx, ax
    add di, 2
loop dongu
.exit
end
