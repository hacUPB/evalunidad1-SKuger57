// Samuel Kuger Muriel
// 000416026
// samuel.kuger@upb.edu.co

(INICIO) 
		@KBD
		D=M
		@84
		D=D-A
		@VERT
		D;JEQ

		@KBD
		D=M
		@67
		D=D-A
		@VACIO
		D;JEQ

		@INICIO
		0;JMP

(VACIO) 
		@16384
		D=A
		@COORDENADA1
		M=D
		@8192
		D=A
		@CUENTA
		M=D
		@1
		D=A
		@SALTO
		M=D
		@COLOR1
		M=0
		@COORDENADA1
		D=M
		@pscreen
		M=D
		@BORRAR
		0;JMP

(VERT) 
		@16400 
		D=A 
		@COORDENADA2
		M=D
		@256 
		D=A
		@CUENTA
		M=D
		@32
		D=A
		@SALTO
		M=D
		@256
		D=A
		@COLOR
		M=D

		@COORDENADA2
		D=M
		@pscreen
		M=D
		@PINTAR
		0;JMP

(HOR) 

		@20480
		D=A
		@COORDENADA1
		M=D
		@32
		D=A
		@CUENTA
		M=D
		@1
		D=A
		@SALTO
		M=D
		@COLOR1
		M=-1
		
		@COORDENADA1
		D=M
		@pscreen
		M=D
		@BORRAR
		0;JMP

(PINTAR) 
		@CUENTA
		D=M
		@HOR
		D;JEQ

		@COLOR
		D=M
		@pscreen
		A=M
		M=D

		@CUENTA
		M=M-1

		@SALTO
		D=M

		@pscreen
		M=M+D

		@PINTAR
		0;JMP

(BORRAR) 
		@CUENTA
		D=M
		@FINAL
		D;JEQ

		@COLOR1
		D=M
		@pscreen
		A=M
		M=D

		@CUENTA
		M=M-1

		@SALTO
		D=M

		@pscreen
		M=M+D

		@BORRAR
		0;JMP

(FINAL) 
		@INICIO
		0;JMP