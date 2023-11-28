.model small

.stack 32
.data
mesajim db 'hello cpu !'

.code
   mov ax,@data ;data segmentin ramdeki adresini ax'e kopyala
   mov ds,ax    ;DS registera AX registerini kopyala   
   ;data segmenti artik mesajim degiskenine erisebilir
   
   mov ax,4c01h
   int 21h      ;program duzgun sonlandi yada sonlanmadi
   
end
