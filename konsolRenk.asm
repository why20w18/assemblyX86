org 100h     ;programin ram offsetini 0100 ayarladim

.model small
.stack 32
.data

text db 'Welcome bugOS Operating System !','$'

.code 
      mov ax,@data
      mov ds,ax
      
     
       
      ;EKRANA DEGISKENI BASTIR
      mov dx,offset text    ;text adresini dx'e atadim cagirdigim 9 fonksiyonu dx'e gore hareket eder
      mov ah,9              ;string bastirmak istiyorum , dx'de stringin ilk degeri olmak zorunda
      int 21h   
      
      ;BEKLET
      mov ah,0
      int 16h
      
      
         ;EKRAN RENGINI DEGISTIR
        mov ah,0Bh
        mov al,0Fh
        int 10h   
        
         ;BEKLET
      mov ah,0
      int 16h
         
          
     .EXIT

end
