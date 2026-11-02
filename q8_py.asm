;Ekta math equation solve korte hobe: Result = ((A * B) + C) / D ebong MUL & DIV use korte hobe. Sheshe result ta 7-segment display te pathate hobe.
;Sample Input: A = 02H, B = 03H, C = 04H, D = 02H.
;Expected Result: (2*3 + 4) / 2 = 5.

.MODEL SMALL
.CODE
     ORG 1000H
     MOV AL, 80H
     OUT 1FH, AL
     MOV AL, 2
     MOV BL, 3
     MUL BL
     ADD AL, 4
     MOV BL, 2
     DIV BL
     MOV BL, AL
     MOV BH, 0
     MOV AL, CS:DIGIT[BX]
     OUT 19H, AL
     JMP $
DIGIT DB 0C0H,0F9H,0A4H,0B0H,99H,92H,82H,0F8H,80H,90H
END