Algoritmo sin_titulo
	Definir codpostal, cantCartas1,cantCartas2,cantCartas3, cantSimples, cantCertif, mCP1, mCP2, mCP3, mPeso1, mPeso2, mPeso3, empresa Como Entero;
	Definir gramos, cbase, cIva, cTotal, cartaMasCara1, cartaMasCara2, cartaMasCara3, recTotal1,recTotal2, recTotal3, recTotal Como Real;
	Definir tipo Como Cadena;
	
	recTotal1 <- 0;
	recTotal2 <- 0;
	recTotal3 <- 0;
	Escribir "Ingrese número de empresa de transporte: ";
	leer empresa;
	Mientras empresa <> -1 Hacer
		Segun empresa Hacer
			1:
				Escribir 'Ingrese el tipo de carta a enviar: (Simple o Certificada)';
				Leer tipo;
				Escribir 'Codigo Postal a donde será enviada: ';
				Leer codpostal;
				Escribir 'Cuanto pesa el envío?: (su peso en gramos)';
				Leer gramos;
				cantCartas1 <- cantCartas1 + 1;
				Si (tipo='Simple') Entonces
					cbase <- gramos*0.5;
				SiNo
					cbase <- gramos*1;
				FinSi
				cIva <- cbase*21/100;
				cTotal <- cIva+cbase;
				Si cTotal>cartaMasCara1 Entonces
					cartaMasCara1 <- cTotal;
					mCP1 <- codpostal;
					mPeso1 <- gramos;
				FinSi
				recTotal1 <- recTotal1 + cTotal;
				
			2:
				Escribir 'Ingrese el tipo de carta a enviar: (Simple o Certificada)';
				Leer tipo;
				Escribir 'Codigo Postal a donde será enviada: ';
				Leer codpostal;
				Escribir 'Cuanto pesa el envío?: (su peso en gramos)';
				Leer gramos;
				cantCartas2 <- cantCartas2 + 1;
				Si (tipo='Simple') Entonces
					cbase <- gramos*0.5;
				SiNo
					cbase <- gramos*1;
				FinSi
				cIva <- cbase*21/100;
				cTotal <- cIva+cbase;
				Si cTotal>cartaMasCara2 Entonces
					cartaMasCara2 <- cTotal;
					mCP2 <- codpostal;
					mPeso2 <- gramos;
				FinSi
				recTotal2 <- recTotal2 + cTotal;
			3:
				Escribir 'Ingrese el tipo de carta a enviar: (Simple o Certificada)';
				Leer tipo;
				Escribir 'Codigo Postal a donde será enviada: ';
				Leer codpostal;
				Escribir 'Cuanto pesa el envío?: (su peso en gramos)';
				Leer gramos;
				cantCartas3 <- cantCartas3 + 1;
				Si (tipo='Simple') Entonces
					cbase <- gramos*0.5;
				SiNo
					cbase <- gramos*1;
				FinSi
				cIva <- cbase*21/100;
				cTotal <- cIva+cbase;
				Si cTotal>cartaMasCara3 Entonces
					cartaMasCara3 <- cTotal;
					mCP3 <- codpostal;
					mPeso3 <- gramos;
				FinSi
				recTotal3 <- recTotal3 + cTotal;
			De Otro Modo:
				Escribir "La empresa no existe - ó Ingrese -1 para salir";
		Fin Segun
		
		Escribir "Ingrese número de empresa de transporte: ";
		Leer empresa;
		
		
	Fin Mientras
		
	Escribir "La recaudacion de la empresa es:", recTotal1;
	Escribir "La recaudacion de la empresa es:", recTotal2;
	Escribir "La recaudacion de la empresa es:", recTotal3;
	
	recTotal<-recTotal1+recTotal2+recTotal3;
	
	Escribir "La recaudacion total es:", recTotal;
	
	si(cantCartas1>cantCartas2 y cantCartas1>cantCartas3 )
		Escribir "La empresa que mas cartas despacho es la 1";
	FinSi
	Si(cantCartas2>cantCartas1 y cantCartas2>cantCartas3)
		Escribir "La empresa que mas cartas despacho es la 2";
	SiNo
		Escribir "La empresa que mas cartas despacho es la 3";
	FinSi
	
	
	
FinAlgoritmo
