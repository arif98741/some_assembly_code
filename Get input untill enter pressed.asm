.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC
    
    MOV BL,'0'    
    MOV AH,1
    
    FOR:  
        INT 21H
        INC BL
        CMP AL,0DH     ;compare al with carriage return to check if enter is pressed or not
        JE PRINT
        JMP FOR
        
    PRINT:
            
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        DEC BL 
        
                  
        MOV AH,2          
        MOV DL,BL
        INT 21H          
    
    MAIN ENDP
END MAIN
