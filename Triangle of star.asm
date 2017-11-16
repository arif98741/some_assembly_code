.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC  
        
    MOV BX,'1'
    SUB BX,30H       
    
    FOR1:
       
        MOV CX,BX
        MOV AH,2
        MOV DL,'*'
    
    FOR2:       
    
        INT 21H 
        LOOP FOR2
            
    INC BX
    CMP BX,6
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    JLE FOR1 
    
    MAIN ENDP
END MAIN