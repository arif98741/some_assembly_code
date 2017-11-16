.STACK 100H
.MODEL SMALL
.DATA
MSG DB 'THIS IS A NUMBER $'
.CODE

MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1    ;input 
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'1'  ;compare bl with 1 
    JL END_IF   ;jump to END_IF level if bl is less than 1
    
    CMP BL,'9'  ;compare bl with 9
    JG END_IF   ;jump to END_IF level if bl is greater than 1
    
    MOV AH,2
    MOV DL,0AH
    INT 21H     ;newline
    MOV DL,0DH
    INT 21H
    
    LEA DX,MSG
    MOV AH,9    ;output
    INT 21H    
 
    END_IF:   
            
    MAIN ENDP
END MAIN