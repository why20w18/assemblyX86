org 100h     ;programin ram offsetini 0100 ayarladim

.model small
.stack 32
.data

text db 'Welcome bugOS Operating System !','$'

.code 
      mov ax,@data
      mov ds,ax
      
      mov dx,offset text    ;text adresini dx'e atadim cagirdigim 9 fonksiyonu dx'e gore hareket eder
      mov ah,9              ;string bastirmak istiyorum , dx'de stringin ilk degeri olmak zorunda
      int 21h 
      
      ;cikarken ekrani VGA eriserek temizleme
      
      mov ah,6      ;6.video modu
      mov cx,0h     ;baslangic pozisyonu
      mov dx,184fh  ;bitis pozisyonu         
      
      int 10h       ;VGA KESMESI
      
      
  
              
          
     .EXIT

end
