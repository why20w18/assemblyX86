name "ilk elemani sona kaydirma"

.model small
.stack 32
.data
sayi db 1,2,3,4,5,6,7,8,9
.code
    
    mov ax,@data
    mov ds,ax    
    
           mov cx,9                    
           mov si,offset sayi ;dongu atarsak 1 ve 2 degisir sadece          
           dongu:
           
           mov al,[si]       
           add si,1 
                   
           xchg [si],al    ;al=2 oldu
           mov [si-1],al      
           loop dongu          
           
    mov ax,004ch
    int 21h   
   

end
