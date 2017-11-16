.stack 100h
.model small
.data
.code

main proc  
    
    xor cx,cx 
    
    mov ah,1
    int 21h
    
    
    scan:         
    
        cmp al,0dh
        je reverse
        push ax
        inc cx 
        int 21h
        jmp scan
    
    reverse: 
    
        jcxz exit 
    
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        mov ah,2
        
    print:
        
        pop dx  
        int 21h
        
        loop print
        
    
    exit:
    
    main endp
end main