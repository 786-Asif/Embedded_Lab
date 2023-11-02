ORG 0000H
MOV R0,#40H
MOV @R0,#'0'
INC R0
MOV @R0,#'1'
INC R0
MOV @R0,#'2'
INC R0
MOV @R0,#'3'
INC R0
MOV @R0,#'4'
INC R0
MOV @R0,#'5'
INC R0
MOV @R0,#'6'
INC R0
MOV @R0,#'7'
INC R0
MOV @R0,#'8'
INC R0
MOV @R0,#'9'
INC R0
MOV @R0,#'10'
INC R0
MOV @R0,#'11'
INC R0
MOV @R0,#'12'
INC R0
MOV @R0,#'13'
INC R0
MOV @R0,#'14'
INC R0
MOV @R0,#'15'
START:
MOV P0,#00H
MOV P1,#00H
MOV P2,#0FFH
MOV P3,#00H
MOV A,#38H;
ACALL COMMAND;
ACALL DELAY;
MOV A,#0EH;
ACALL COMMAND;
ACALL DELAY;
MOV A,#01H;
ACALL COMMAND;
ACALL DELAY;
MOV A,#80H;
ACALL COMMAND;
ACALL DELAY;
//-----------
ACALL ROW0
ACALL ROW1
ACALL ROW2
ACALL ROW3
ROW0: MOV R0,#3FH
MOV P0,#0FEH
MOV A,P2
CJNE A,#0FFH,CONT1
RET
CONT1: RRC A
INC R0
JNC DATA1
JMP CONT1
ROW1: MOV R0,#43H
MOV P0,#0FDH
MOV A,P2
CJNE A,#0FFH,CONT2
RET
CONT2: RRC A
INC R0
JNC DATA1
JMP CONT2
ROW2: MOV R0,#47H
MOV P0,#0FBH
MOV A,P2
CJNE A,#0FFH,CONT3
RET
CONT3: RRC A
INC R0
JNC DATA1
JMP CONT3
ROW3: MOV R0,#4BH
MOV P0,#0F7H
MOV A,P2
CJNE A,#0FFH,CONT4
RET
CONT4: RRC A
INC R0
JNC DATA1
JMP CONT4
//DISPLAY: MOV A,@R0
//MOV P3,A
//ACALL DELAY
//JMP E


COMMAND:CLR P3.3
MOV P1,A;
SETB P3.2;
ACALL DELAY;
CLR P3.2;
RET
DATA1:SETB P3.3;
	MOV P1,A
	SETB P3.2;
	ACALL DELAY;
	CLR P3.0
	ACALL DELAY;
	RET
DELAY:MOV R3,#200
LABEL2:MOV R2,#250
LABEL1:DJNZ R2,LABEL1
DJNZ R3,LABEL2
RET
	
E: NOP
END