Proceso MENU
	Definir EligeSalir Como Logico;
	Definir eleccion Como Numeros;
	definir plata Como Real;
	plata <- 0;
	
	Escribir "                     /$$                     /$$                                               /$$          ";
	Escribir "                    | $$                    |__/                                              |__/          ";
	Escribir "  /$$$$$$$  /$$$$$$ | $$ /$$   /$$  /$$$$$$$ /$$  /$$$$$$  /$$$$$$$         /$$$$$$$  /$$$$$$  /$$ /$$$$$$$ ";
	Escribir " /$$_____/ /$$__  $$| $$| $$  | $$ /$$_____/| $$ /$$__  $$| $$__  $$       /$$_____/ /$$__  $$| $$| $$__  $$";
	Escribir "|  $$$$$$ | $$  \ $$| $$| $$  | $$| $$      | $$| $$  \ $$| $$  \ $$      | $$      | $$  \ $$| $$| $$  \ $$";
	Escribir " \____  $$| $$  | $$| $$| $$  | $$| $$      | $$| $$  | $$| $$  | $$      | $$      | $$  | $$| $$| $$  | $$";
	Escribir " /$$$$$$$/|  $$$$$$/| $$|  $$$$$$/|  $$$$$$$| $$|  $$$$$$/| $$  | $$      |  $$$$$$$|  $$$$$$/| $$| $$  | $$";
	Escribir "|_______/  \______/ |__/ \______/  \_______/|__/ \______/ |__/  |__/       \_______/ \______/ |__/|__/  |__/";
	Escribir "                                                                                                            ";
	Escribir "                                                                                                            ";
	Escribir "                                                                                                            ";
	
	Escribir 'Presione una tecla para empezar';
	Esperar Tecla;
	Limpiar Pantalla;
	
	EligeSalir<-Falso;
	
	Repetir
		Escribir ' ';
		Escribir 'Elija una opci?n:';
		Escribir '  1 - BlackJack';
		Escribir '  2 - Juego de la ruleta';
		Escribir '  3 - Juego de Dados';
		Escribir '  4 - Opcion 4';
		Escribir '  5 - Opcion 4';
		Escribir '  6 - Opcion 5';
		Escribir '  7 - Opcion 6';
		Escribir '  8 - Opcion 7';
		Escribir '  9 - Salir';
		Escribir ' ';
		
		Escribir Sin Saltar'Donde sea apostar -';
		Leer eleccion;
		Limpiar Pantalla;
		
		Segun eleccion Hacer
			1: 
				menuBlackJack(plata );
			2: 
				Ruleta(plata);
			3: 
				JuegoDeDados(plata);
			4: Escribir'Funcion 4';
			5: Escribir 'Funcion 5';
			6: 
				Escribir 'Funcion 6';
			7: 
				Escribir 'Funcion 7';
			8: 
				Escribir 'Funcion 8';
			9:
				EligeSalir<-Verdadero;
			De Otro Modo:
				Escribir 'Eleccion no v?lida!';
		FinSegun
	Hasta que EligeSalir
FinProceso

//######################## ..............:::::MENU BlackJack::::::.............######################################

SubProceso menuBlackJack( plata Por Referencia)
	
	
	Escribir "                                                                                                                                                            ";
	Escribir "                                                                                                                                                            ";
	Escribir "BBBBBBBBBBBBBBBBB   lllllll                                      kkkkkkkk                  JJJJJJJJJJJ                                   kkkkkkkk           ";
	Escribir "B::::::::::::::::B  l:::::l                                      k::::::k                  J:::::::::J                                   k::::::k           ";
	Escribir "B::::::BBBBBB:::::B l:::::l                                      k::::::k                  J:::::::::J                                   k::::::k           ";
	Escribir "BB:::::B     B:::::Bl:::::l                                      k::::::k                  JJ:::::::JJ                                   k::::::k           ";
	Escribir "  B::::B     B:::::B l::::l   aaaaaaaaaaaaa      cccccccccccccccc k:::::k    kkkkkkk         J:::::J  aaaaaaaaaaaaa      cccccccccccccccc k:::::k    kkkkkkk";
	Escribir "  B::::B     B:::::B l::::l   a::::::::::::a   cc:::::::::::::::c k:::::k   k:::::k          J:::::J  a::::::::::::a   cc:::::::::::::::c k:::::k   k:::::k ";
	Escribir "  B::::BBBBBB:::::B  l::::l   aaaaaaaaa:::::a c:::::::::::::::::c k:::::k  k:::::k           J:::::J  aaaaaaaaa:::::a c:::::::::::::::::c k:::::k  k:::::k  ";
	Escribir "  B:::::::::::::BB   l::::l            a::::ac:::::::cccccc:::::c k:::::k k:::::k            J:::::j           a::::ac:::::::cccccc:::::c k:::::k k:::::k   ";
	Escribir "  B::::BBBBBB:::::B  l::::l     aaaaaaa:::::ac::::::c     ccccccc k::::::k:::::k             J:::::J    aaaaaaa:::::ac::::::c     ccccccc k::::::k:::::k    ";
	Escribir "  B::::B     B:::::B l::::l   aa::::::::::::ac:::::c              k:::::::::::k  JJJJJJJ     J:::::J  aa::::::::::::ac:::::c              k:::::::::::k     ";
	Escribir "  B::::B     B:::::B l::::l  a::::aaaa::::::ac:::::c              k:::::::::::k  J:::::J     J:::::J a::::aaaa::::::ac:::::c              k:::::::::::k     ";
	Escribir "  B::::B     B:::::B l::::l a::::a    a:::::ac::::::c     ccccccc k::::::k:::::k J::::::J   J::::::Ja::::a    a:::::ac::::::c     ccccccc k::::::k:::::k    ";
	Escribir "BB:::::BBBBBB::::::Bl::::::la::::a    a:::::ac:::::::cccccc:::::ck::::::k k:::::kJ:::::::JJJ:::::::Ja::::a    a:::::ac:::::::cccccc:::::ck::::::k k:::::k   ";
	Escribir "B:::::::::::::::::B l::::::la:::::aaaa::::::a c:::::::::::::::::ck::::::k  k:::::kJJ:::::::::::::JJ a:::::aaaa::::::a c:::::::::::::::::ck::::::k  k:::::k  ";
	Escribir "B::::::::::::::::B  l::::::l a::::::::::aa:::a cc:::::::::::::::ck::::::k   k:::::k JJ:::::::::JJ    a::::::::::aa:::a cc:::::::::::::::ck::::::k   k:::::k ";
	Escribir "BBBBBBBBBBBBBBBBB   llllllll  aaaaaaaaaa  aaaa   cccccccccccccccckkkkkkkk    kkkkkkk  JJJJJJJJJ       aaaaaaaaaa  aaaa   cccccccccccccccckkkkkkkk    kkkkkkk";
	Escribir "                                                                                                                                                            ";
	
	Escribir " ____    ____    ____    ____     ",".__                    .___.__                           ";
	Escribir "|A   |  |A   |  |A   |  |A   |    ","|  |   _________     __| _/|__| ____    ____             ";
	Escribir "|(\/)|  | /\ |  | /\ |  | &  |    ","|  |  /  _ \__  \   / __ | |  |/    \  / ___\            ";
	Escribir "| \/ |  | \/ |  |(__)|  |&|& |    ","|  |_(  <_> ) __ \_/ /_/ | |  |   |  \/ /_/  >           ";
	Escribir "|   A|  |   A|  | /\A|  | | A|    ","|____/\____(____  /\____ | |__|___|  /\___  / /\  /\  /\ ";
	Escribir "`----`  `----?  `----?  `----?    ","                \/      \/         \//_____/  \/  \/  \/ ";
	
	
	Esperar 2 Segundos;
	
	Limpiar Pantalla;
	//Opciones de menu
	Definir EligeSalir Como Logico;
	Definir eleccion Como Numeros;
	//cargamos el mazo
	Definir baraja, aux1, aux2 Como Caracter;
	Dimension baraja[13,4];
	definir i, j Como Entero;
	
	aux1 <- "A234567890JQK";
	aux2 <- "CDPT";
	
	para i <- 0 Hasta 12 Hacer
		para j <- 0 hasta 3 Hacer
			baraja[i,j] <- Concatenar(Concatenar(Subcadena(aux1,i,i),Subcadena(aux2,j,j)),"V");
		FinPara
	FinPara
	
	
	definir ingreso Como Real;
	ingreso<- 0;
	EligeSalir<-Falso;
	
	Repetir
		Escribir ' ';
		Escribir 'Elija una opci?n:';
		Escribir '  1 - Jugar';
		Escribir '  2 - Ingresar Dinero';
		Escribir '  3 - Consultar Saldo';
		Escribir '  4 - Salir';
		Escribir ' ';
		
		Escribir Sin Saltar'Seleccione una opci?n ---';
		Leer eleccion;
		Limpiar Pantalla;
		
		Segun eleccion Hacer
			1: 
				si plata > 0 Entonces
					apostar(plata , baraja);
				SiNo
					Escribir "Debe ingresar Dinero para poder apostar :";
				FinSi
				
			2: 
				Repetir
					Escribir "Debe ingresar dinero para poder jugar :";
					leer ingreso;
					plata <- plata + ingreso;
					Limpiar Pantalla;
					si ingreso > 0 Entonces
						Escribir "Felicidades Ingreso $", ingreso ;
						esperar 2 Segundos;
						Limpiar Pantalla;
					FinSi
				Hasta Que plata > 0
				
			3: 
				Escribir "Su saldo es de : $", plata;
			4:
				EligeSalir<-Verdadero;
			De Otro Modo:
				Escribir 'Eleccion no v?lida!';
		FinSegun
	Hasta que EligeSalir
FinSubProceso

//#############################################....::::Aspectos de las cartas :::::....###########################################################

SubProceso EscrituraDeCartaCorazon ( carta )
	Definir corazon,baraja Como Caracter;
	Dimension corazon[6];
	definir i Como Entero;
	corazon[0] <- " ____ ";
	corazon[1] <- Concatenar("|",Concatenar(carta,"   |"));
	corazon[2] <- "|(\/)|";
	corazon[3] <- "| \/ |";
	corazon[4] <- Concatenar("|   ",Concatenar(carta,"|"));
	corazon[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir corazon[i];
	FinPara
FinSubProceso

SubProceso EscrituraDeCartaDiamante ( carta )
	Definir diamante,baraja Como Caracter;
	Dimension diamante[6];
	definir i Como Entero;
	diamante[0] <- " ____ ";
	diamante[1] <- Concatenar("|",Concatenar(carta,"   |"));
	diamante[2] <- "| /\ |";
	diamante[3] <- "| \/ |";
	diamante[4] <- Concatenar("|   ",Concatenar(carta,"|"));
	diamante[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir diamante[i];
	FinPara
FinSubProceso

SubProceso EscrituraDeCartaPicas( carta )
	Definir picas,baraja Como Caracter;
	Dimension picas[6];
	definir i Como Entero;
	picas[0] <- " ____ ";
	picas[1] <- Concatenar("|",Concatenar(carta,"   |"));
	picas[2] <- "| /\ |";
	picas[3] <- "|(__)|";
	picas[4] <- Concatenar("| /\",Concatenar(carta,"|"));
	picas[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir picas[i];
	FinPara
FinSubProceso

SubProceso EscrituraDeCartaTrebol( carta )
	Definir trebol,baraja Como Caracter;
	Dimension trebol[6];
	definir i Como Entero;
	trebol[0] <- " ____ ";
	trebol[1] <- Concatenar("|",Concatenar(carta,"   |"));
	trebol[2] <- "| &  |";
	trebol[3] <- "|&|& |";
	trebol[4] <- Concatenar("| | ",Concatenar(carta,"|"));
	trebol[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir trebol[i];
	FinPara
FinSubProceso

//#############################################....::::Pintar Carta :::::....###########################################################

SubProceso  PintarCarta(cartaRecibida)
	definir palo, valorDeCarta , carta Como Caracter;
	Dimension carta[6];
	definir i, j Como Entero;
	
	valorDeCarta <- Subcadena(cartaRecibida,0,0);
	palo <- Subcadena(cartaRecibida,1,1);
	
	si palo = "C" Entonces
		EscrituraDeCartaCorazon(valorDeCarta);	
	FinSi
 	
	si palo = "D" Entonces
		EscrituraDeCartaDiamante(valorDeCarta);
	FinSi
	si palo = "P" Entonces
		EscrituraDeCartaPicas(valorDeCarta);
	FinSi
	si palo = "T" Entonces
		EscrituraDeCartaTrebol(valorDeCarta);
	FinSi
	
FinSubProceso


//#############################################....::::Devolver una carta al azar :::::....###########################################################
SubProceso cartaRetornada <- tomarCarta(baraja por referencia)
	Definir aux1, aux2 , azarNum , azarTipo, azarValor , cartaRetornada Como Caracter;
	
	definir i, j , n Como Entero;
	definir carta Como Caracter;
	Definir bandera Como Logico;
	n<-0;	
	repetir
		azarTipo <- ConvertirATexto(azar(4));
		azarValor <- ConvertirATexto(azar(13));
		cartaRetornada <- baraja[azarValor,azarTipo];
		
		si Subcadena(cartaRetornada,2,2)="V" Entonces
			bandera <- Verdadero;
			
			cartaRetornada <- baraja[azarValor,azarTipo];
			
			// marcamos la carta que sale como le?da para que no se repita
			baraja[azarValor,azarTipo] <- Concatenar(Subcadena(cartaRetornada,0,1),"F");
		SiNo
			bandera <- falso;
		FinSi
		n <- n+1;
	Hasta Que bandera o n=52
	
FinSubproceso



//#############################################....::::APOSTAR :::::....###########################################################
SubProceso apostar(plata Por Referencia , baraja Por Referencia)
	Limpiar Pantalla;
	Definir apuesta Como Real;
	Repetir
		Escribir "Cuanto dinero desea apostar : $";
		leer apuesta;
		Limpiar Pantalla;
		si apuesta> plata Entonces
			Escribir "La apuesta que estas ingresando supera a tu dinero actual -.-*";
			Escribir "Presione una tecla para volver a intentar.";
			Esperar Tecla;
			Limpiar Pantalla;
		FinSi
	Hasta Que plata > 0 y apuesta <= plata
	
	Limpiar Pantalla;
	Escribir  " Repartiendo las cartas espere por favor... ";
	Esperar 3 segundos;
	repartirCartas(plata, apuesta , baraja);
FinSubProceso


//#############################################....::::Repartir Cartas :::::....###########################################################

funcion repartirCartas(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia)
	Limpiar Pantalla;
	Definir  manoJugador , manoCrupier Como Caracter;
	Dimension manojugador[11], manoCrupier[11];
	definir i, j ,valorDeCartaJugador, valorDeCartaCrupier, puntosJugador, puntosCrupier , ciclo Como Entero;
	definir turno Como Logico;
	//	seteamos el puntaje de cartas del jugador y del crupier en 0
	puntosJugador <- 0;
	puntosCrupier <- 0;
	
	// cargamos las manos con un caracter inicial para poder trabajarlas luego
	para i <- 0 Hasta 10 Con Paso 1 Hacer
		manoJugador[i] <- "vacia";
		manoCrupier[i] <- "vacia";
	FinPara
	
	//Cargamos las 2 cartas del jugador
	manoJugador[0] <- tomarCarta(baraja);
	manoJugador[1] <- tomarCarta(baraja);
	
	//seteamos el turno del jugador en 1
	ciclo<- 2;
	
	//Cargamos la mano del crupier
	manoCrupier[0] <- tomarCarta(baraja);
	//	mostramos las cartas del jugador
	mostrarCartasSobreLaMesaDelJugador(manoJugador, puntosJugador);
	
	mostrarCartasSobreLaMesaDelCrupier(manoCrupier , puntosCrupier);
	
	si puntosJugador = 21 Entonces
		
		Escribir  "GANASTE FELICITACIONES BLACK JACK";
		Escribir  "pulsa una tecla para continuar";
		plata <- plata + apuesta;
		Esperar Tecla;
		limpiar pantalla;
	SiNo
		
		//Turno del jugador
		turno <- Verdadero;
		turnoDelJugador(plata , apuesta, baraja,puntosJugador,puntosCrupier, manoJugador, manoCrupier, ciclo);
		
	FinSi
FinFuncion
//#############################################....::::Mostrar la manos del jugador por pantalla :::::....###########################################################

SubProceso mostrarCartasSobreLaMesaDelJugador(manoJugador Por Referencia , puntosJugador Por Referencia)
	definir i  Como Entero;
	puntosJugador <- 0;
	//	mostramos las cartas del jugador
	Escribir "Tu mano es: ";
	
	para i <- 0 hasta 9 Hacer
		si manoJugador[i] <> "vacia" Entonces
			PintarCarta(manoJugador[i]);
			puntosJugador <- puntosJugador + devolverPuntos(manoJugador[i],puntosJugador);
		FinSi
	FinPara
	escribir "Los puntos del jugador son " , puntosJugador;
	Escribir "";
FinSubProceso


//#############################################....::::Mostrar la manos del jugador por pantalla :::::....###########################################################

SubProceso mostrarCartasSobreLaMesaDelCrupier(manoCrupier Por Referencia , puntosCrupier Por Referencia)
	definir i  Como Entero;
	Escribir "La mano del crupier es: ";
	puntosCrupier <-0;
	para i <- 0 hasta 9 Hacer
		si manoCrupier[i] <> "vacia" Entonces
			PintarCarta(manoCrupier[i]);
			puntosCrupier <- puntosCrupier + devolverPuntos(manoCrupier[i],puntosCrupier);
		FinSi
	FinPara
	escribir "Los puntos del crupier " , puntosCrupier;
FinSubProceso

//#############################################....::::Devuelve los puntos de las cartas :::::....###########################################################
Funcion puntos <- devolverPuntos(carta , puntaje )
	definir puntos Como Entero;
	si Subcadena(carta,0,0) = "J" o Subcadena(carta,0,0) = "Q" o Subcadena(carta,0,0) = "K" o Subcadena(carta,0,0) = "A" o Subcadena(carta,0,0) = "0" Entonces
		si Subcadena(carta,0,0) <> "A" Entonces
			puntos <- 10;
		SiNo
			si puntaje + 11 > 22 Entonces
				puntos <- 1;
			SiNo
				puntos <- 11;
			FinSi
		FinSi
	SiNo
		puntos <- ConvertirANumero(Subcadena(carta,0,0));
	FinSi
FinFuncion


//#############################################....:::Turno del Jugador::::....#################################################
SubProceso turnoDelJugador(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia, puntosJugador Por Referencia, puntosCrupier Por Referencia ,manoJugador Por Referencia,manoCrupier Por Referencia, ciclo Por Referencia)
	definir turno Como Logico;
	definir plantarse, perdio Como Logico;
	Definir i , j , eleccion Como Entero;
	plantarse<-Falso;
	perdio <- falso;
	
	
	mientras (!plantarse y !perdio ) hacer
		
		Escribir ' DINERO DISPONIBLE : $', plata;
		Escribir ' ';
		Escribir 'Elija una opci?n:';
		
		Escribir '  1 - Pedir carta';
		Escribir '  2 - Plantarse';
		
		Escribir Sin Saltar'Seleccione una opci?n ---';
		Leer eleccion;
		Limpiar Pantalla;
		mostrarCartasSobreLaMesaDelJugador(manoJugador, puntosJugador);
		mostrarCartasSobreLaMesaDelCrupier(manoCrupier  , puntosCrupier);
		Segun eleccion Hacer
			1: 
				manoJugador[ciclo] <- tomarCarta(baraja);
				ciclo <- ciclo +1;
				Limpiar Pantalla;
				mostrarCartasSobreLaMesaDelJugador(manoJugador, puntosJugador);
				mostrarCartasSobreLaMesaDelCrupier(manoCrupier  , puntosCrupier);
				
				si puntosJugador >21 Entonces
					
					perdio <- Verdadero;
					plata <- plata - apuesta;
					Escribir "PERDIO , USTED SE PASO..";
					Escribir "Presione una tecla para continuar...";
					Esperar Tecla;
					Limpiar Pantalla;
				FinSi
			2: 
				plantarse<-Verdadero;
				turnoDelCrupier(plata , apuesta, baraja,puntosJugador,puntosCrupier, manoJugador, manoCrupier);
			De Otro Modo:
				Escribir 'Eleccion no v?lida!';
		FinSegun
		
	FinMientras
	
FinSubProceso



//#############################################....:::Turno del Crupier::::....#################################################

SubProceso turnoDelCrupier(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia, puntosJugador Por Referencia, puntosCrupier Por Referencia ,manoJugador Por Referencia,manoCrupier Por Referencia)
	definir perdio Como Logico;
	Definir i , j , eleccion , ciclo Como Entero;
	perdio <- falso;
	ciclo <- 1;
	
	mientras (!perdio ) hacer
		
		Limpiar Pantalla;
		mostrarCartasSobreLaMesaDelJugador(manoJugador, puntosJugador);
		mostrarCartasSobreLaMesaDelCrupier(manoCrupier  , puntosCrupier);
		
		manoCrupier[ciclo] <- tomarCarta(baraja);
		ciclo <- ciclo +1;
		
		si puntosCrupier > 21 Entonces
			perdio <- verdadero;
			Escribir "GANO , EL CRUPIER SE PASO. ";
			Escribir "Presione una tecla para continuar...";
			plata <- plata + apuesta;
			Esperar Tecla;
		FinSi
		
		si puntosCrupier >= 17 y puntosCrupier < puntosJugador Entonces
			perdio <- verdadero;
			Escribir "GANO , TU MANO FUE SUPERIOR A LA DEL CRUPIER.";
			Escribir "Presione una tecla para continuar...";
			plata <- plata + apuesta;
			Esperar Tecla;
		FinSi
		
		si puntosCrupier >= 17 y puntosCrupier > puntosJugador Y puntosCrupier <22 Entonces
			perdio <- verdadero;
			Escribir "PERDIO , LA MANO DEL CRUPIER FUE SUPERIOR.";
			Escribir "Presione una tecla para continuar...";
			plata <- plata - apuesta;
			Esperar Tecla;
		FinSi
		
		si  puntosCrupier = puntosJugador y puntosCrupier >= 17 Entonces
			perdio <- verdadero;
			Escribir "EMPATE , TU MANO COMO LA DEL CRUPIER VALEN IGUALES.";
			Escribir "Presione una tecla para continuar...";
			Esperar Tecla;
		FinSi
		
		SI puntosCrupier < 17 Entonces
			Escribir "Esperee";
			Escribir "Tomando otra carta el crupier";
			Esperar 3 segundos;
		FinSi
		Limpiar Pantalla;
	FinMientras
	
FinSubProceso

//######################## ..............:::::JUEGO RULETA::::::.............######################################

SubProceso Ruleta (plata Por Referencia)
	// Definir variables
	Limpiar Pantalla;
	Definir numero_aleatorio, docena_apostada  como Entero;
	Definir numero_apostado, apuesta1 como Entero;
	Definir color_apostado, paridad_apostada como Cadena;
	Definir tipo_apuesta, color_salio como Cadena;
	Definir resultado_apuesta como Cadena;
	Definir ganancia, nuevo_plata como Real;
	Definir plata_apostado como Real;
	Definir apuesta Como Logico;
	
	//Incializar juego
	Escribir "";
	Escribir "";
	Escribir "************************************";
	Escribir "  Bienvenido al juego de la ruleta  ";
	Escribir "************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "	************************************";
	Escribir "  	  Bienvenido al juego de la ruleta  ";
	Escribir "	************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "		************************************";
	Escribir "  		  Bienvenido al juego de la ruleta  ";
	Escribir "		************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "			************************************";
	Escribir "  			  Bienvenido al juego de la ruleta  ";
	Escribir "			************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "		************************************";
	Escribir "  		  Bienvenido al juego de la ruleta  ";
	Escribir "		************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "	************************************";
	Escribir "  	  Bienvenido al juego de la ruleta  ";
	Escribir "	************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "************************************";
	Escribir "  Bienvenido al juego de la ruleta  ";
	Escribir "************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "	************************************";
	Escribir "  	  Bienvenido al juego de la ruleta  ";
	Escribir "	************************************";
	Esperar 1 Segundos;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "";
	Escribir "		************************************";
	Escribir "  		  Bienvenido al juego de la ruleta  ";
	Escribir "		************************************";
	Esperar 1 Segundos;
	Escribir "";
	Escribir "";
	Escribir "***** Presione cualquier tecla para comenzar *****"; 
	Esperar Tecla;
	Limpiar pantalla;
	
	Escribir "";
	Escribir "///// Te contamos las reglas antes de comenzar /////";
	Escribir "";
	Escribir "---- Apuesta simple ----";
	Escribir "Se trata de apostar a un solo n?mero.";
	Escribir "La ganancia en esta apuesta es, lo apostado por 35!";
	Escribir "";
	Escribir "---- Apuesta por color ----";
	Escribir "Se apuesta al color del n?mero ganador, si ser? rojo o negro.";
	Escribir "Con esta apuesta se est? jugando a 18 n?meros ya que en la ruleta hay 18 n?meros rojos y 18 n?meros negros.";
	Escribir "La ganancia en esta apuesta es la suma de lo apostado";
	Escribir "";
	Escribir "---- Apuesta por docena ----";
	Escribir "Se trata de apostar en que docena estar? el n?mero ganador.";
	Escribir "El tapete se divide en 3 docenas, cada una de ellas abarca 12 n?meros, por tanto al apostar por una docena se juega a 12 n?meros.";
	Escribir "La ganancia en esta apuesta es el doble de lo apostado";
	
	// Inicializar variables
	Escribir "";
	Escribir "Para comenzar. Cuanto dinero quiere ingresar?: ";
	Leer plata;
	Limpiar Pantalla;
	apuesta <- Verdadero;
	
	
	// Bucle principal del juego
	Repetir
		
		Escribir "Men? de recomendaciones";
		Escribir "   1. Apuesta simple";
		Escribir "   2. Apuesta por color";
		Escribir "   3. Apuesta por docena";
		Escribir "   4. Salir";
		
		// ingresar una opcion
		Escribir "Elija una apuesta segun el menu";
		Leer apuesta1;
		Limpiar Pantalla;
		
		// Simular el giro de la ruleta
		numero_aleatorio <- azar(36);	
		
		// Le vamos a dar color a los numeros
		Si numero_aleatorio == 1 o numero_aleatorio == 3  o numero_aleatorio == 5 o numero_aleatorio == 7 o numero_aleatorio == 9 o numero_aleatorio == 12 o numero_aleatorio == 14 o numero_aleatorio == 16 o numero_aleatorio == 18 o numero_aleatorio == 21 o numero_aleatorio == 23 o numero_aleatorio == 25 o numero_aleatorio == 27 o numero_aleatorio == 30 o numero_aleatorio == 32 o numero_aleatorio == 34 o numero_aleatorio == 36 Entonces
			color_salio <- "rojo";
		SiNo
			Si numero_aleatorio == 2 o numero_aleatorio == 4 o numero_aleatorio == 6 o numero_aleatorio == 8 o numero_aleatorio == 10 o numero_aleatorio == 11 o numero_aleatorio == 13 o numero_aleatorio == 15 o numero_aleatorio == 17 o numero_aleatorio == 19 o numero_aleatorio == 20 o numero_aleatorio == 22 o numero_aleatorio == 24 o numero_aleatorio == 26 o numero_aleatorio == 28 o numero_aleatorio == 29 o numero_aleatorio == 31 o numero_aleatorio == 33 o numero_aleatorio == 35 Entonces
				color_salio <- "negro";
			SiNo
				color_salio <- "verde";
			FinSi
		FinSi
		
		Segun apuesta1 Hacer
			
			1: 
				Escribir "Usted eligio apuesta simple";
				Escribir "";
				Escribir "Cuanto es el dinero a apostar?: ";
				Leer plata_apostado;
				Si plata_apostado < plata Entonces
					Escribir "Ingrese el numero que desea apostar entre 1 y 36: ";
					Leer numero_apostado;
					Si numero_apostado == numero_aleatorio Entonces
						Escribir "Usted gan?!!!";
						plata <- plata + (plata_apostado * 35);
						Escribir "Usted tiene ahora de plata: ", plata;
						Escribir "";
						Escribir "Presione cualquier tecla para salir";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						Escribir "Perdio!!";
						apuesta <- Falso;
						plata <- (plata - plata_apostado);
						Escribir "";
						Escribir "El numero que salio es: ", numero_aleatorio;
						Escribir "";
						Escribir "Presione cualquier tecla para salir";
						Esperar Tecla;
						Limpiar Pantalla;
					FinSi
				SiNo
					Escribir "No puede ingresar lo que no tiene";
				FinSi
				
			2: 
				Escribir "Usted eligio apuesta por color";
				Escribir "";
				Escribir "Cuanto es el dinero a apostar?: ";
				Leer plata_apostado;
				Escribir "";
				Escribir "Ingrese el color que quiere elegir (rojo/negro/verde): ";
				Leer color_apostado;
				Esperar 1 Segundos;
				Limpiar Pantalla;
				
				Si color_salio = color_apostado Entonces
					Escribir "Salio el color ", color_salio;
					Escribir "";
					Escribir "Usted gano!!!";
					Escribir "";
					Escribir "Pulse una tecla para volver al menu";
					plata <- (plata + plata_apostado);
					Esperar 1 Segundos;
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					Escribir "Salio el color ", color_salio;
					Escribir "";
					Escribir "Usted perdio :(";
					Escribir "";
					Escribir "Pulse una tecla para volver al menu";
					plata <- (plata - plata_apostado);
					Esperar 1 Segundos;
					Esperar Tecla;
					Limpiar Pantalla;
				FinSi
				
			3:
				Repetir
					Escribir "Las docenas a apostar";
					Escribir "   1. Primera docena (1-12)";
					Escribir "   2. Segunda docena (13-24)";
					Escribir "   3. Tercera docena (25-36)";
					Escribir "   4. Volver al menu principal";
					
					Escribir "Elija la docena a apostar: ";
					Leer docena_apostada;
					Escribir "";
					Esperar 1 Segundos;
					Limpiar Pantalla;
					
					Segun docena_apostada Hacer
						1:
							Escribir "Usted eligio la primera docena";
							Escribir "";
							Escribir "Cuanto es el dinero a apostar?: ";
							Leer plata_apostado;
							Esperar 1 Segundos;
							Si numero_aleatorio <= 12 Entonces
								Escribir "Salio el numero ", numero_aleatorio;
								Escribir "";
								Escribir "Usted gan?!!";
								plata <- (plata + (plata_apostado * 2));
								Escribir "";
								Escribir "Presione cualquier tecla";
								Esperar Tecla;
								Limpiar Pantalla;
							SiNo
								Escribir "";
								Escribir "Salio el numero ", numero_aleatorio;
								Escribir "";
								Escribir "Usted perdio :(";
								plata <- (plata - plata_apostado);
								Escribir "";
								Escribir "Presione cualquier tecla";
								Esperar Tecla;
								Limpiar Pantalla;
							FinSi
							
						2:
							Escribir "Usted eligio la segunda docena";
							Escribir "";
							Escribir "Cuanto es el dinero a apostar?: ";
							Leer plata_apostado;
							Esperar 1 Segundos;
							Si numero_aleatorio >= 13 & numero_aleatorio <= 24 Entonces
								Escribir "Salio el numero ", numero_aleatorio;
								Escribir "";
								Escribir "Usted gan?!!";
								plata <- (plata + (plata_apostado * 2));
								Escribir "";
								Escribir "Presione cualquier tecla";
								Esperar Tecla;
								Limpiar Pantalla;
							SiNo
								Escribir "";
								Escribir "Salio el numero ", numero_aleatorio;
								Escribir "";
								Escribir "Usted perdio :(";
								plata <- (plata - plata_apostado);
								Escribir "";
								Escribir "Presione cualquier tecla";
								Esperar Tecla;
								Limpiar Pantalla;
							FinSi
							
						3: 
							Escribir "Usted eligio la tercera docena";
							Escribir "";
							Escribir "Cuanto es el dinero a apostar?: ";
							Leer plata_apostado;
							Esperar 1 Segundos;
							Si numero_aleatorio >= 25 & numero_aleatorio <= 36 Entonces
								Escribir "Salio el numero ", numero_aleatorio;
								Escribir "";
								Escribir "Usted gan?!!";
								plata <- (plata + (plata_apostado * 2));
								Escribir "";
								Escribir "Presione cualquier tecla";
								Esperar Tecla;
								Limpiar Pantalla;
							SiNo
								Escribir "";
								Escribir "Salio el numero ", numero_aleatorio;
								Escribir "";
								Escribir "Usted perdio :(";
								plata <- (plata - plata_apostado);
								Escribir "";
								Escribir "Presione cualquier tecla";
								Esperar Tecla;
								Limpiar Pantalla;
							FinSi
							
						4: 
							Escribir "";
							Escribir "##### Saliendo #####";
							Esperar 1 Segundos;
							Limpiar Pantalla;
						De Otro Modo:
							Escribir "opcion no valida";
					FinSegun
				Hasta Que docena_apostada = 4;
				
			4:
				Limpiar Pantalla;
				Escribir "*********************************************";
				Escribir "Gracias por jugar con Solucion 202!!! ";
				Escribir "*********************************************";
			De Otro Modo:
				Escribir "Opcion no valida";
				
		FinSegun
		
		// Mostrar el plata actual
		Escribir "/////// Su plata actual es: $", plata, " ///////";
		Escribir "";
		Esperar 3 Segundos;
		Escribir "";
		
	Hasta Que apuesta1 = 4 O plata <= 0;	
	
FinSubProceso

//***********************************JUEGO***DE***DADOS****************************************//
//MOSTRAR DADOS
SubProceso MostrarDado(numero)
    Segun numero Hacer
        1:
            Escribir "+-------+";
            Escribir "|       |";
            Escribir "|   *   |";
            Escribir "|       |";
            Escribir "+-------+";
        2:
            Escribir "+-------+";
            Escribir "| *     |";
            Escribir "|       |";
            Escribir "|     * |";
            Escribir "+-------+";
        3:
            Escribir "+-------+";
            Escribir "| *     |";
            Escribir "|   *   |";
            Escribir "|     * |";
            Escribir "+-------+";
        4:
            Escribir "+-------+";
            Escribir "| *   * |";
            Escribir "|       |";
            Escribir "| *   * |";
            Escribir "+-------+";
        5:
            Escribir "+-------+";
            Escribir "| *   * |";
            Escribir "|   *   |";
            Escribir "| *   * |";
            Escribir "+-------+";
        6:
            Escribir "+-------+";
            Escribir "| *   * |";
            Escribir "| *   * |";
            Escribir "| *   * |";
            Escribir "+-------+";
    FinSegun
FinSubProceso

SubProceso JuegoDeDados (plata Por Referencia)
    Definir apuesta, dado1, dado2, sumaDados Como Entero;
    Definir seguirJugando Como Logico;
    seguirJugando <- Verdadero;
	
    Mientras seguirJugando Hacer
        Limpiar Pantalla;
        Escribir "**********************************";
        Escribir "*         Juego de Dados         *";
        Escribir "**********************************";
		Escribir "";
		
		Escribir "Cuánto desea apostar?: ";
        Leer apuesta;
		Limpiar Pantalla;
		
        Si apuesta <= plata Entonces
            dado1 <- azar(6) + 1;
            dado2 <- azar(6) + 1;
            sumaDados <- dado1 + dado2;
			
            Escribir "Dado 1: ";
            MostrarDado(dado1);
            Escribir "Dado 2: ";
            MostrarDado(dado2);
            Escribir "Suma de los dados: ", sumaDados;
			
            Si sumaDados >= 7 Entonces
                Escribir "¡Felicidades! Ganaste.";
                plata <- plata + apuesta;
            Sino
                Escribir "Perdiste.";
                plata <- plata - apuesta;
            FinSi
        Sino
            Escribir "No tienes suficiente dinero para apostar esa cantidad.";
        FinSi
		
		// Mostramos saldo actual
		Escribir "***** Su saldo es: $", plata, " *****";
		Escribir "";
		Esperar 2 Segundos;
		Escribir "";
        Escribir "¿Deseas seguir jugando? (1 = Sí, 0 = No)";
        Leer seguirJugando;
		
    FinMientras
	
    Limpiar Pantalla;
    Escribir "Gracias por jugar al Juego de Dados.";
FinSubProceso

