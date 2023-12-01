name "sayinin kac kaydirmada sifir oldugunu bulan program"

.model small
.stack 32
.data

    sayiDizi db 5,12,63,29,42,51,81,79
    adimSayi db 8 dup(0)
    
.code
    .STARTUP
     ;DIZI ADRESLERINI ALIRIM
     mov si,offset sayiDizi
     mov di,offset adimSayi
     
     bas:    
     mov bl,0 ;ADIM SAYIMI TUTACAK SAYAC
     mov al,[si];AL REGISTERINE DIZIDEN ELEMAN AL
     
     dongu:
     shr al,1 ;AL DEGERINI SAGA KAYDIR
     jz sifirlandi
     inc bl
     loop dongu
     
     sifirlandi:
     inc bl
     mov [di],bl
     inc si
     inc di
     jmp bas
     
     
     
    .EXIT
end
