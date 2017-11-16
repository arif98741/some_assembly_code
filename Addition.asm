.STACK 100H
.MODEL SMALL
.DATA        
MSG DB 'INPUT 1ST NUMBER : $'
MSG1 DB 'INPUT 2ND NUMBER : $'
MSG2 DB 'RESULT IS : $'

.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG      ;PRINT MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;1ST INPUT
    INT 21H
    
    MOV BL,AL       ;MOVE TO BL REGISTER
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H 
    
    LEA DX,MSG1     ;PRINT MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1        ;2ND INPUT
    INT 21H
    
    MOV CL,AL       ;MOVE TO CL REGISTER
    
    ADD BL,CL       ;ADDING BL WITH CL
    
    SUB BL,48       ;CONVERTING  
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H 
    
    LEA DX,MSG2     ;PRINT MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL       ;OUTPUT
    INT 21H
    
    
    
    MAIN ENDP

END MAIN