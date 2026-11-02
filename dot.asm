; Dot matrix: letter A in green (the 8 columns are lit one after another, fast)
.MODEL SMALL
.CODE
     ORG 1000H            ; the kit starts the program at 0000:1000
     MOV AL, 80H
     OUT 1EH, AL          ; 8255 (CS1): ports A, B, C = output
     MOV AL, 0FFH
     OUT 18H, AL          ; port A (red) off
FRAME:
     XOR SI, SI           ; start from column 1
     MOV AH, 1            ; AH = column select
COL: MOV AL, CS:FONT_B[SI]
     OUT 1AH, AL          ; port B = green rows of this column (0 = LED on)
     MOV AL, AH
     OUT 1CH, AL          ; port C = select this column
     MOV CX, 300          ; short delay for each column
T1:  LOOP T1
     INC SI
     SHL AH, 1            ; next column
     JNZ COL
     JMP FRAME            ; scan all 8 columns again
FONT_A DB 0FFH, 0C0H, 0B7H, 77H, 77H, 0B7H, 0C0H, 0FFH   ; letter A, 1 byte = 1 column
FONT_B DB 0FFH, 01H, 6DH, 6DH, 6DH, 93H, 0FFH, 0FFH

FONT_C DB 0FFH, 83H, 7DH, 7DH, 7DH, 7DH, 0FFH, 0FFH

FONT_D DB 0FFH, 01H, 7DH, 7DH, 7DH, 83H, 0FFH, 0FFH

FONT_E DB 0FFH, 01H, 6DH, 6DH, 6DH, 7DH, 0FFH, 0FFH

FONT_F DB 0FFH, 01H, 6FH, 6FH, 6FH, 7FH, 0FFH, 0FFH

FONT_G DB 0FFH, 83H, 7DH, 6DH, 6DH, 61H, 0FFH, 0FFH

FONT_H DB 0FFH, 01H, 0EFH, 0EFH, 0EFH, 01H, 0FFH, 0FFH

FONT_I DB 0FFH, 7DH, 7DH, 01H, 7DH, 7DH, 0FFH, 0FFH

FONT_J DB 0FFH, 0FBH, 0FDH, 7DH, 03H, 7FH, 0FFH, 0FFH

FONT_K DB 0FFH, 01H, 0EFH, 0D7H, 0BBH, 7DH, 0FFH, 0FFH

FONT_L DB 0FFH, 01H, 0FDH, 0FDH, 0FDH, 0FDH, 0FFH, 0FFH

FONT_M DB 0FFH, 01H, 0BFH, 0CFH, 0BFH, 01H, 0FFH, 0FFH

FONT_N DB 0FFH, 01H, 0BFH, 0DFH, 0EFH, 01H, 0FFH, 0FFH

FONT_O DB 0FFH, 83H, 7DH, 7DH, 7DH, 83H, 0FFH, 0FFH

FONT_P DB 0FFH, 01H, 6FH, 6FH, 6FH, 9FH, 0FFH, 0FFH

FONT_Q DB 0FFH, 83H, 7DH, 75H, 7BH, 85H, 0FFH, 0FFH

FONT_R DB 0FFH, 01H, 6FH, 67H, 6BH, 9DH, 0FFH, 0FFH

FONT_S DB 0FFH, 9DH, 6DH, 6DH, 6DH, 73H, 0FFH, 0FFH

FONT_T DB 0FFH, 7FH, 7FH, 01H, 7FH, 7FH, 0FFH, 0FFH

FONT_U DB 0FFH, 03H, 0FDH, 0FDH, 0FDH, 03H, 0FFH, 0FFH

FONT_V DB 0FFH, 07H, 0FBH, 0FDH, 0FBH, 07H, 0FFH, 0FFH

FONT_W DB 0FFH, 03H, 0FDH, 0E3H, 0FDH, 03H, 0FFH, 0FFH

FONT_X DB 0FFH, 39H, 0D7H, 0EFH, 0D7H, 39H, 0FFH, 0FFH

FONT_Y DB 0FFH, 3FH, 0DFH, 0E1H, 0DFH, 3FH, 0FFH, 0FFH

FONT_Z DB 0FFH, 79H, 75H, 6DH, 5DH, 3DH, 0FFH, 0FFH
END







; Dot matrix: letter A in green (the 8 columns are lit one after another, fast)
.MODEL SMALL
.CODE
     ORG 1000H            ; the kit starts the program at 0000:1000
     MOV AL, 80H
     OUT 1EH, AL          ; 8255 (CS1): ports A, B, C = output
     MOV AL, 0FFH
     OUT 18H, AL          ; port A (red) off
FRAME:
     XOR SI, SI           ; start from column 1
     MOV AH, 1            ; AH = column select
COL: MOV AL, CS:FONT_B[SI]
     OUT 1AH, AL          ; port B = green rows of this column (0 = LED on)
     MOV AL, AH
     OUT 1CH, AL          ; port C = select this column
     MOV CX, 300          ; short delay for each column
T1:  LOOP T1
     INC SI
     SHL AH, 1            ; next column
     JNZ COL
     JMP FRAME            ; scan all 8 columns again
FONT_A DB 0FFH, 0C0H, 0B7H, 77H, 77H, 0B7H, 0C0H, 0FFH   ; letter A, 1 byte = 1 column
FONT_B DB 11111111B   ; col 1: ফাঁকা
    
       DB 00000000B   ; col 2
    
       DB 01101110B   ; col 3
    
       DB 01101110B   ; col 4
    
       DB 01101110B   ; col 5
    
       DB 01101110B   ; col 6
    
       DB 10010001B   ; col 7
    
       DB 11111111B   ; col 8: ফাঁকা

FONT_C DB 0FFH, 83H, 7DH, 7DH, 7DH, 7DH, 0FFH, 0FFH

FONT_D DB 0FFH, 01H, 7DH, 7DH, 7DH, 83H, 0FFH, 0FFH

FONT_E DB 0FFH, 01H, 6DH, 6DH, 6DH, 7DH, 0FFH, 0FFH

FONT_F DB 0FFH, 01H, 6FH, 6FH, 6FH, 7FH, 0FFH, 0FFH

FONT_G DB 0FFH, 83H, 7DH, 6DH, 6DH, 61H, 0FFH, 0FFH

FONT_H DB 0FFH, 01H, 0EFH, 0EFH, 0EFH, 01H, 0FFH, 0FFH

FONT_I DB 0FFH, 7DH, 7DH, 01H, 7DH, 7DH, 0FFH, 0FFH

FONT_J DB 0FFH, 0FBH, 0FDH, 7DH, 03H, 7FH, 0FFH, 0FFH

FONT_K DB 0FFH, 01H, 0EFH, 0D7H, 0BBH, 7DH, 0FFH, 0FFH

FONT_L DB 0FFH, 01H, 0FDH, 0FDH, 0FDH, 0FDH, 0FFH, 0FFH

FONT_M DB 0FFH, 01H, 0BFH, 0CFH, 0BFH, 01H, 0FFH, 0FFH

FONT_N DB 0FFH, 01H, 0BFH, 0DFH, 0EFH, 01H, 0FFH, 0FFH

FONT_O DB 0FFH, 83H, 7DH, 7DH, 7DH, 83H, 0FFH, 0FFH

FONT_P DB 0FFH, 01H, 6FH, 6FH, 6FH, 9FH, 0FFH, 0FFH

FONT_Q DB 0FFH, 83H, 7DH, 75H, 7BH, 85H, 0FFH, 0FFH

FONT_R DB 0FFH, 01H, 6FH, 67H, 6BH, 9DH, 0FFH, 0FFH

FONT_S DB 0FFH, 9DH, 6DH, 6DH, 6DH, 73H, 0FFH, 0FFH

FONT_T DB 0FFH, 7FH, 7FH, 01H, 7FH, 7FH, 0FFH, 0FFH

FONT_U DB 0FFH, 03H, 0FDH, 0FDH, 0FDH, 03H, 0FFH, 0FFH

FONT_V DB 0FFH, 07H, 0FBH, 0FDH, 0FBH, 07H, 0FFH, 0FFH

FONT_W DB 0FFH, 03H, 0FDH, 0E3H, 0FDH, 03H, 0FFH, 0FFH

FONT_X DB 0FFH, 39H, 0D7H, 0EFH, 0D7H, 39H, 0FFH, 0FFH

FONT_Y DB 0FFH, 3FH, 0DFH, 0E1H, 0DFH, 3FH, 0FFH, 0FFH

FONT_Z DB 0FFH, 79H, 75H, 6DH, 5DH, 3DH, 0FFH, 0FFH
END
