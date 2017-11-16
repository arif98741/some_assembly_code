.STACK 100H
.MODEL SMALL
.DATA
.CODE

MAIN PROC
    
    MOV AH,1
    
    REPEAT:
           
        INT 21H
    
        CMP AL,' '
        JNE REPEAT
    
    MAIN ENDP
END MAIN