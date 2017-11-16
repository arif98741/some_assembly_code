.STACK 100H
.MODEL SMALL
.DATA
MSG DB 'INPUT YOUR CHARATER IN UPPERCASE : $'
MSG1 DB 'YOUR CHARACTER IN LOWECASE IS : $'
MSG2 DB 'AGAIN YOUR CHARACTER IN UPPERCASE IS : $'
.CODE

MAIN PROC                                        
    
    MOV AX,@DATA
    MOV DS,AX
 
    LEA DX,MSG
    MOV AH,9        ;PRINT MSG 
    INT 21H
              
    MOV AH,1        ;SCAN
    INT 21H
    
    MOV CL,AL
    ;MOV BL,CL   

    ADD CL,20H      ;TO LOWER 
    
    MOV AH,2
    MOV DL,0AH      ;NEWLINE
    INT 21H
    MOV DL,0DH
    INT 21H
 
    LEA DX,MSG1
    MOV AH,9        ;PRINT MSG1
    INT 21H
 
    MOV AH,2
    MOV DL,CL       ;PRINT CHAR
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H         ;NEWLINE
    MOV DL,0DH
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9        ;PRINT MSG2
    INT 21H   
    
    SUB CL,20H      ;TO UPPER
    
    MOV AH,2
    MOV DL,CL       ;PRINT CHAR
    INT 21H
    
    MAIN ENDP

END MAIN
