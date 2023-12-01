name "lodsb ve stosb ile tersten yazdirma"

.model small
.stack 32
.data
     
  sayilar db 1,2,3,4,5,6,7,8
     ters db 8 dup(0)
    
.code
   ; .STARTUP ; EXTRA SEGMENTIDE TANIMLAMALIYIM MOV KOMUTLARI
   ;EXTRA SEGMENT UZERINDEN TASIMA YAPIYOR
   
   mov ax,@data
   mov ds,ax
   mov es,ax
   
   mov si,offset sayilar
   mov di,offset ters
   add di,7 ;TERSTE INDEX SONU GOSTERSIN
   mov cx,8
   dongu:;DONGU KURMAZSAM ILK ELEMANI ATAR BIRAKIR   
   cld
   lodsb
   std ;DF=0 DIYEREK BASA GECIRDIM
   stosb ;BASA YERLESTIRDIM
   loop dongu  
    
    .EXIT
end
