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
		@CUENTA1
		M=D
		@1
		D=A
		@SALTO1
		M=D
		@COLOR1
		M=0
		@COORDENADA1
		D=M
		@PANTALLA
		M=D
		@BORRAR
		0;JMP

(VERT) 
		@16400 
		D=A 
		@COORDENADA2
		M=D
		@255 
		D=A
		@CUENTA2
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
		@PANTALLA
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
		@CUENTA1
		M=D
		@1
		D=A
		@SALTO1
		M=D
		@COLOR1
		M=-1
		
		@COORDENADA1
		D=M
		@PANTALLA
		M=D
		@BORRAR
		0;JMP

(PINTAR) 
		@CUENTA2
		D=M
		@HOR
		D;JEQ

		@COLOR
		D=M
		@PANTALLA
		A=M
		M=D

		@CUENTA2
		M=M-1

		@SALTO
		D=M

		@PANTALLA
		M=M+D

		@PINTAR
		0;JMP

(BORRAR) 
		@CUENTA1
		D=M
		@FINAL
		D;JEQ

		@COLOR1
		D=M
		@PANTALLA
		A=M
		M=D

		@CUENTA1
		M=M-1

		@SALTO1
		D=M

		@PANTALLA
		M=M+D

		@BORRAR
		0;JMP

(FINAL) 
		@INICIO
		0;JMP