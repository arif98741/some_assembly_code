.STACK 100H
.MODEL SMALL
.DATA     
MSG DB 'INPUT YOUR CHARACTER IN UPPERCASE: $'
MSG1 DB 'YOUR CHARACTER IN LOWERCASE IS : $' 
.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG      ;PRINT MSG
    MOV AH,9
    INT 21H     
    
    MOV AH,1        ;INPUT
    INT 21H
    
    MOV CL,AL
    
    ADD CL,20H      ;CONVERT FROM UPPER TO LOWERCASE 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H
    
    LEA DX,MSG1     ;PRINT MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CL       ;OUTPUT
    INT 21H    
    
    MAIN ENDP

END MAIN