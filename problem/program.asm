// Samuel Kuger Muriel
// 000416026
// samuel.kuger@upb.edu.co

(INICIO) // Inicia la variable de las 2 teclas y en caso de que una sea oprimida dice que debe ejecutar "VACIO" o "LINEAS", es un loop, o sea, hasta que no se ordene algo no pasa de aca.
		@KBD
		D=M
		@84
		D=D-A
		@LINEAS
		D;JEQ

		@KBD
		D=M
		@67
		D=D-A
		@VACIO
		D;JEQ

		@INICIO
		0;JMP

(VACIO) // Indica las cordenadas y el punto desde donde se comienza a borrar haciendo un salto a la funcion de borrarse y reinicia el contador.
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

(LINEAS) // Indica las coordenadas desde donde se empiezan a pintar las lineas llevando el codigo a "cordpintar" y se reinicia el contador.
		@16400 
		D=A 
		@COORDENADA2
		M=D
		@256 
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

(BLANCO) // Indica las coordenadas donde no se pintan las lineas y las manda a la orden de borrar.

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

(PINTAR) // Es un loop el cual hace que se pinte en las coordenadas indicadas y cuando termina hace un salto a "BLANCO".
		@CUENTA2
		D=M
		@BLANCO
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

(BORRAR) // Es un loop el cual hace que se borre en las coordenadas indicadas y cuando termina hace un salto a "FINAL", que a su vez vuelve a iniciar el codigo.
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

(FINAL) // Da la orden de volver a "inicio" para poder usar nuevamente el programa.
		@INICIO
		0;JMP