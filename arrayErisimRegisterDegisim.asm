.model small                      
.stack 32

.data

sayi1 db 11h,12h,13h,14h,15h
sayi2 db 16h,17h,18h,19h
.code

.STARTUP  

mov ah,3 
mov al,3

dec ah  ;ah=2


jmp label
inc al ;al=4

     ;bu blok atlandi    
label:            

xchg ax,bx ;ax ve bx degerlerinin yerini degistirdik

mov bx,0000h ;bx degerini sifirladik yeni adres atayacagiz

lea bx,sayi2 ;sayi2 adresini atadim 0005h baslangic degeridir
mov al,3  ;DL registerine sayi2 dizisindeki 3.indexteki eleman gelir
xlatb     ;19

mov bx,0000h  ;bx'in eski degerini silmedigimden hatali calisti 
;x86 ilk bug cozumu !
mov al,6  ;AL registerine ramde 0006'deki elemani atadim 13h oluyor
xlatb



.EXIT
          
end
