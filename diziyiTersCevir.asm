name "dizideki elemanlari sondan basa yazdiran program"

.model small
.stack 32
.data
    
    duz db 0,1,2,3,4,5,6,7,8,9
   ters db 10 dup(0)

.code
    .STARTUP
    
     lea si,duz
     lea di,ters
     
     mov cx,10
     add di,9  ;ters isimli dizinin adresini 9 ileri tasidim    
     dongu:
     
     mov al,[si]
     mov [di],al
     inc si
     dec di    
     
     
     loop dongu
    
    .EXIT
end
 
