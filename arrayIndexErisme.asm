;3.calisma
.model small
.stack 32

.data            
degisken4 db 12h,13h,14h ;dizi tanimladim 2.indexe eriscem

degisken2 dw 1415h,1213h
;index:      1. 0. 3. 2.
;burada high-low
;ramde yerlesirken low-high

.code
   
   ;data segmente erisim
   mov ax,@data
   mov ds,ax
    
   lea bx,degisken2 ;degisken2 adresi bx'e atildi
   
   ;degerleri net gormek icin sifirladim
   mov cx,0000h 
   mov cx,[bx]                
   
   mov ax,0000h
   
   ;arrayde elemana erisme
   mov di,2 ;indexi yazdim
   mov al,degisken4[di] ;low degere atadim byte tanimladim 8 bit cunku
   
   
   mov ax,004ch
   int 21h

end
