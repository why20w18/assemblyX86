name "bit degerlerini kaydirarak carpma"

.model small
.stack 32
.data

    sayiDizi db 1,6,3,9,12,26,7,16
    katIki   db 8 dup(0)
   katOnAlti db 8 dup(0)

.code
    .STARTUP
    
    mov si,offset sayiDizi
    mov di,offset katIki
    mov cx,8
    
    ;2 KATINA CIKARMA
    dongu:
    mov al,[si]
    shl al,1
    
    mov [di],al
    inc si
    inc di
    loop dongu
    
    ;16 KATINA CIKARMA
    mov cx,8            ;DEGERLERI SIFIRLADIM KULLANILDILAR
    lea si,sayiDizi
    lea di,katOnAlti
    
    dongu2:
    mov al,[si]
    shl al,4
    
    mov [di],al
    inc si
    inc di
    loop dongu2
    ;255 VE UZERI GOZUKENLER BYTE SINIRINI ASIYOR
    
    .EXIT
end
