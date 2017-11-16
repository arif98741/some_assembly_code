.STACK 100H
.MODEL SMALL
.DATA     
MSG DB 'INPUT YOUR CHARACTER IN LOWERCASE: $'
MSG1 DB 'YOUR CHARACTER IN UPPERCASE IS : $' 
.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H     
    
    MOV AH,1        ;INPUT
    INT 21H
    
    MOV CL,AL
    
    SUB CL,20H      ;CONVERT FROM LOWER TO UPPERCASE 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CL       ;OUTPUT
    INT 21H    
    
    MAIN ENDP

END MAIN