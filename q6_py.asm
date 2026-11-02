;Ekta number er factorial ber korte hobe CALL ebong RET use kore. Sathe Stack (PUSH/POP) use kora mandatory.
;Sample Input: N = 4.
;Sample Output: Factorial = 24 (Hexadecimal e 18H).


.MODEL SMALL
.STACK 100H
.DATA
    N   DB 5
    RES DW ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV CL, N
    MOV CH, 0
    CALL FACT
    MOV RES, AX

    MOV AX, RES
    CALL PRINTNUM       ; prints 120

    MOV AH, 4CH
    INT 21H
MAIN ENDP

FACT PROC
    PUSH CX
    MOV AX, 1
F1:
    MUL CX
    LOOP F1
    POP CX
    RET
FACT ENDP

PRINTNUM PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    MOV BX, 10
    MOV CX, 0           ; digit count
DIGIT:
    MOV DX, 0           ; DX:AX / 10
    DIV BX              ; AX = quotient, DX = remainder
    PUSH DX             ; save digit
    INC CX
    CMP AX, 0
    JNE DIGIT
SHOW:
    POP DX              ; digits come out in correct order
    ADD DL, 30H
    MOV AH, 2
    INT 21H
    LOOP SHOW
    POP DX
    POP CX
    POP BX
    POP AX
    RET
PRINTNUM ENDP
END MAIN