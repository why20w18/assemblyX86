name "JZ Kullanimi"

.model small
.stack 32           
.data

.code
    
    mov ax,@data
    mov ds,ax
           
    jmp start
    sifirlandi:
    mov al,1
    jmp kontrol          
           
           
    start:  
    mov al,4                     
    kontrol:
    sub al,4 	  ;AL=4 ZF= 1 . AL=1 ZF=0
    jz sifirlandi
    		  ;AL=1 ZF=0
    mov ax,004ch
    int 21h
   

end
