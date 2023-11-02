ORG 0000H
	MOV R0,#10H
	MOV R1,#20H
	MOV R3,#05H

L1:		MOV A,@R0
		MOV B, A
		MOV A, @R1
		ADD A, B
		MOV @R1, A
		INC R0
		INC R1
		DJNZ R3, L1
		END
		
	
	
