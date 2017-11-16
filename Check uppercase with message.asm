.STACK 100H
.MODEL SMALL
.DATA            
MSG DB 'INPUT : $'
MSG1 DB 'OUTPUT : IT IS AN UPPERCASE LETTER $'
.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H   
    
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,'A'
    JL END_IF
    
    CMP BL,'Z'
    JG END_IF 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H   
           
    END_IF:
    
    MAIN ENDP

END MAIN