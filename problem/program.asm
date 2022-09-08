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
        @COORDENADA
        M=D 
        @8192
        D=A

        @CUENTA
        M=D
        @1
        D=A 

        @CUENTA2
        M=D

        @COLOR
        M=0

        @TASK
        0;JMP

(HOR)
		@20480
		D=A
		@COORDENADA
		M=D
		@32
		D=A

		@CUENTA
		M=D
		@1
		D=A

		@CUENTA2
		M=D

		@COLOR
		M=-1
		@if
		M=1

		@TASK
		0;JMP

(VERT)
		@16400 
		D=A 
		@COORDENADA
		M=D
		@256 
		D=A

		@CUENTA
		M=D
		@32
		D=A

		@CUENTA2
		M=D
		@256
		D=A

		@COLOR
		M=D
		@if
		M=0

		@TASK
		0;JMP

(TASK)
        @COORDENADA
        D=M
        @PANTALLA
        M=D

(PINTAR)
        @CUENTA
        D=M 
        @FINAL
        D;JEQ

        @COLOR
        D=M 
        @PANTALLA
        A=M 
        M=D

        @CUENTA
        M=M-1

        @CUENTA2
        D=M

        @PANTALLA
        M=M+D

        @PINTAR
        0;JMP

(FINAL)
        @if
        D=M 
        @HOR
        D;JEQ  
		
        @INICIO
        0;JMP