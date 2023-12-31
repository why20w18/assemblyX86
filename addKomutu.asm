.model small ;bellek modelini belirledik
.stack 32    ;programin kullanacagi stack boyutunu ayarladik

.data    ;0.  1.  2.  3.  5.
yaslar db 13h,25h,37h,41h,56h ;5 elemanli dizi olusturduk

.code ;executable kismi baslattik

    mov ax,@data ;data segment adres degisimi
    mov ds,ax    ;DS register artik data segmente erisebiliyor
    
    lea bx,yaslar ;yaslarin adresini aldim
    mov si,0 ;source indexi belirledik 0000h olarakta belirlenebilir
    
    mov ax,0000h
    mov ah,[bx][si] ;8bit oldugundan bizde registeri high aldik
    
    add si,1        ;SI registerinin tuttugu index 1 arttirildi
    mov ah,[bx][si]
    
    mov si,0000h    ;SI registerini sifirladim
    add bx,2        ;yaslarin adresini 2 arttirdik 37 gostermeli
    mov ah,[bx][si]

end                                     

