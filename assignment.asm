.model small ;bellek modeli ayarlandi
.stack 32 ;programin kullanacagi yigit boyutu ayarlandi
.data ; programin kullanacagi data bolutunu ayarlariz

sayilarim db 9h,12h,15h ;hexa olarak ayarladik
   ;indexler:0. 1.  2.
   
.code ;cpuya iletilecek kodlar yurutulebilir
   
   mov ax,@data
   mov ds,ax ;temp olmadan ds atanmadi
          
   mov ax,0005h ;ax registera 5 atadik
   mov bx,0001h ;bx base adresstir 1 atadim
   mov cx,[bx]  ;data segmentteki sayilarim degiskeni icindeki 1.indexteki degeri cx'e atadim
   mov ax,[bx]  ;data segmentteki sayilarim degiskeni icindeki 1.indexteki degeri cx'e atadim 
                ;[index] bize data segmentte istedigimizi verir , index=pointer=bx
   
   
          
          
   mov ax,004ch
   int 21h

end
