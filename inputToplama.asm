name "klavyeden girdi alip toplama yapip ekrana bastiran"

.model small
.stack 32
.data

    sayi1 db ?
    sayi2 db ?
   toplam db ? 
   
.code
   
   mov ax,@data
   mov ds,ax
   
   ;ILK SAYI
   mov ah,01h       ;klavyeden karakter girisi hizmeti
   int 21h
   sub al,'0'
   mov sayi1,al
   
   ;IKINCI SAYI
   mov ah,01h
   int 21h
   sub al,'0'
   mov sayi2,al
   
   ;TOPLAM
   mov al,sayi1
   add al,sayi2
   mov toplam,al
   
   
   ;EKRANA YAZDIRMA   ekrana karakterler yada piksel bastirilir
   mov dl,toplam
   add dl,'0'        ;bu sebeple 48 ile toplayip karakter haline getirdik  
   mov ah,02h        ;ekrana karakter bastirma hizmeti
   int 21h
   
   
   mov ax,004ch
   int 21

end
