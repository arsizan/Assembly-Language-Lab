.MODEL SMALL
.STACK 100H
.DATA
    STR DB 'HELLO'
    LEN EQU $-STR
    REV DB LEN DUP(?),'$'
    M1  DB 'Reversed String: $'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV ES, AX            ; STOSB writes to ES:DI

    LEA SI, STR+LEN-1     ; SI -> last char 'O'
    LEA DI, REV           ; DI -> start of REV
    MOV CX, LEN
    CLD                   ; DF=0, SI/DI go forward
NEXT:
    LODSB                 ; AL = [SI], SI++
    STOSB                 ; [DI] = AL, DI++
    SUB SI, 2             ; net SI-- (walk backward)
    LOOP NEXT

    LEA DX, M1
    MOV AH, 9
    INT 21H
    LEA DX, REV
    INT 21H               ; AH still 9

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN