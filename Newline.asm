.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC
    
    MOV AH,1    ;SCAN
    INT 21H
        
    MOV BL,AL   ;MOVE TO ANOTHER REGISTER
        
    MOV AH,2 
    MOV DL,0DH
    INT 21H     ;NEW LINE
    MOV DL,0AH
    INT 21H
    
    MOV AH,2    
    MOV DL,BL   ;PRINT
    INT 21H
    
    MAIN ENDP

END MAIN