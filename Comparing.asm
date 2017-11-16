.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC
    
    MOV BL,'5'
    MOV CL,'6'
    
    CMP BL,CL   ;compare
    
    JG PRINT    ;jump to print level if bl is greater than cl
    
    CMP BL,CL   ;compare
    
    JNG END_IF  ;jump to end_if level if bl is not greater than cl
    
    JMP END_IF
    
    PRINT: 
        
        MOV AH,2
        MOV DL,BL
        INT 21H
    
    END_IF:
    
    MAIN ENDP

END MAIN