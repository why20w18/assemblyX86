name "toplama cikarma carpma ve bolme"

org 100h 

.model small
.stack 32

.data        

carpan db 3h ;carpan degiskeni 3 olsun

.code
.STARTUP
     
     ;TOPLAMA VE CIKARMA
     jmp label
     mov al,5
     add al,2 ;al degerine 2 ekle
     
     mov ah,8
     add ah,-3 ; ah degerine -3 ekle
     
     mov ah,8 ;tekrar ah 8 olsun
     sub ah,3 ;ah degerinden 3 cikarttik
     label:
     ;CARPMA VE BOLME
     mov ax,0000h ;yukaridaki degerleri sildim
     
     mov al,3
     mov bx,2
     mul bx ;mul sadece isaretsizler + olur ve mul bx e baglidir
     
     mul carpan ; 6x3=12h=18decimal olmali al degeri al degeri 6 oldu yukarda
     
     mov ax,0000h ; ax degerini sildim
     mov bx,0000h ; bx degerinide sildim
         
     mov al,6h
     mov bx,2h
     div bx
     
     div carpan ;3 cikiyor 3 e bolecegim
   
.EXIT
end
