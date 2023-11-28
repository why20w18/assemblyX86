;4.calisma
.model small ;bellek modelini belirledik
.stack 32    ;programin kullanacagi stack boyutunu ayarladik

.data        ;0. 1. 2. 3.
sayilarim1 db 3h,5h,7h,11h ;4 elemanli dizi olusturduk

.code ;executable kismi baslattik

    mov ax,@data ;data segment adres degisimi
    mov ds,ax    ;DS register artik data segmente erisebiliyor
    
    mov di,2     ;diziden alinacak elemanin index
    
    mov ax,0000h ;net gorelim diye sifirladik
    
    ;indexle beraber bx degerine atadik
    mov ax,word ptr sayilarim1[di] 
    
    mov ax,0000h
    mov ah,sayilarim1[di]      
    
    ;programi duzgun sonlandirma      
    mov ax,004ch
    int 21   
   

end
