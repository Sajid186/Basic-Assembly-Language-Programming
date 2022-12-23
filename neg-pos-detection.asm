.MODEL SMALL
.STACK 100H
.DATA 
P DB 0AH,0DH, 'POSITIVE' , 24H  
N DB 0AH,0DH, 'NEGATIVE$'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    CMP BH, 30H  ;ZERO
    JNLE POS
    JL NEGATIVE        
    
    POS:
    MOV AH,9
    LEA DX,P
    INT 21H   
    
    NEGATIVE:  
    
    MOV AH,1       ;INPUT
    INT 21H
    MOV BL,AL
    
    MOV AH,9
    LEA DX,N
    INT 21H 





