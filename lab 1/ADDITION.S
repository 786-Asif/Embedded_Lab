ORG 0000H
MOV R1,#91H
MOV R2,#1AH
MOV R3,#12H
MOV R4,#0AH
MOV A,R1
ADD A,R2
MOV R5,A
MOV A,R3
ADD A,R4
SUBB A,R5
END