name "array islemleri"

.model small
.stack 32
.data       ;37-13-59-17-02-20 ;RAM'e yerlesme sirasi
    sayi dw 1337h,1759h,2002h  ;bellek adresindeki degerler
   sayi1 db 12h 
   sayi2 db 14h,16h,18h 
   sayi3 dw 19h
.code
   
   mov ax,@data
   mov ds,ax
          
   ;mov bh,byte ptr[sayi+3] ;donusumle atama
   
   ;mov di,2
   ;mov bx,sayi[di]   
   
   ;mov bx,word ptr sayi1 ;
   ;mov bh,[sayi1];ramdeki adresten alir
   ;mov bl,sayi1  ;sayi1 etiketinin degerini alir               
   
   ;mov bh,sayi2    ;ilk deger 14
   ;mov bh,sayi2[1] ;1.index 16
   ;mov bh,[sayi2]  ;ilk deger 14
   ;mov bl,[sayi2+1];1.index 16 
   
    mov ax,[sayi]
    mov dx,ax
    mov bx,dx
    
   
   mov ax,004ch
   int 21h
end
