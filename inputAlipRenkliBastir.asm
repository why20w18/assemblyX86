name "input alip ekrana renkli yazdirma"

.model small
.stack 32
.data
   
   metin db 'isminizi girin:'
   metinBoyut db ?
   input db 11 dup(0)
   inpBoyut db ?
   
.code
   
   mov ax,@data
   mov ds,ax
   mov es,ax
   
   mov si,offset input 
   
   ;------BIOS 10 KESMESI ILE EKRAN ISLEMLERI------  
   
   ;EKRAN AYARLAMA
   mov ah,0
   mov al,0 ;ekran modu parametresi 40x25
   int 10h  ;bios kesmesi
   
   ;EKRANA RENKLI YAZI YAZDIRMA
   mov ah,13h
   mov al,1 ;yazdirma modu hep 1
       ;imlec konumu ayarlama
   mov dh,0 ;satir
   mov dl,0 ;sutun
   
   mov bh,0          ;0 indexli sayfa
   mov bl,0010_0000b ;renk ayarlama
   
   mov cx,metinBoyut-metin ;string boyutunu elle saymaya gerek yok
   mov bp,offset metin
   
   int 10h ;bios kesmesi
   
   ;------BIOS 16 KESMESI ILE INPUT ALMA------
   ;sadece 1 karakter alir o yuzden loop acacagim
   ;AL registerine kayit eder aldigi inputu
   
   mov cx,0 ;C dilindeki gibi sifirla sonsuz dongu kurduk
   dongu:  
   mov ah,0
   int 16h   
   
   cmp al,33 ;eger unlem yaparsa cik donguden
   jz unlem
   
   mov [si],al
   inc si
   mov ah,0eh ;girilen karakterleri ekranda goster
   int 10h    
     
   loop dongu
   unlem:                   
   
   ;EKRANA INPUTU YAZDIRMA 
   mov ah,13h
   mov al,1
   mov dh,2 
   mov dl,metinBoyut-metin
   mov bh,0          
   mov bl,0010_1111b
   mov cx,inpBoyut-input 
   mov bp,offset input
   
   int 10h 
   

   .EXIT
end
