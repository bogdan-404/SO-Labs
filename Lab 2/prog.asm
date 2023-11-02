ORG 0x7C00  

xor ax, ax  
mov ds, ax  
mov es, ax  
mov ss, ax  
mov sp, 0x7C00  

MainLoop:
    xor ah, ah   
    int 0x16   

    cmp al, 0x0D
    je  HandleEnter
    cmp al, 0x08 
    je  HandleBackspace

    mov ah, 0x0E 
    int 0x10     

    jmp MainLoop 

HandleEnter:
    mov ax, 0x0E0D 
    int 0x10    
    mov ax, 0x0E0A 
    int 0x10     
    jmp MainLoop

HandleBackspace:
    mov ah, 0x03 
    int 0x10   
    or dx, dx 
    je  MainLoop 

    dec dl      
    mov ah, 0x02 
    int 0x10    

    mov ah, 0x0E 
    mov al, ' ' 
    int 0x10     

    mov ah, 0x02 
    int 0x10     

    jmp MainLoop 

