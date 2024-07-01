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
		Escribir 'Elija una opcion:';
		Escribir '  1 - BlackJack';
		Escribir '  2 - Juego de la ruleta';
		Escribir '  3 - Juego de Dados';
		Escribir '  4 - Acertijo';
		Escribir '  5 - Adivinanzas de Animales';
		Escribir '  6 - JackPot';
		Escribir '  9 - Salir';
		Escribir ' ';
		
		Escribir Sin Saltar'Donde desea apostar -';
		Leer eleccion;
		Limpiar Pantalla;
		
		Segun eleccion Hacer
			1: 
				menuBlackJack(plata );
			2: 
				Ruleta(plata);
			3: 
				JuegoDeDados(plata);
			4: 
				acertijo(plata);
			5: 
				adivinanzasDeAnimales(plata);
			6: 
				JackPot(plata);
			7: 
				Escribir 'Funcion 7';
			8: 
				Escribir 'Funcion 8';
			9:
				si plata >0 Entonces
					Escribir "Retirando $", plata;
					Esperar 2 Segundos;
				FinSi
				
				Escribir "Adioss ¡Vuelva Pronto! ";
				EligeSalir<-Verdadero;
			De Otro Modo:
				Escribir 'Eleccion no valida!';
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
	Escribir "`----`  `----´  `----´  `----´    ","                \/      \/         \//_____/  \/  \/  \/ ";
	
	Esperar 2 Segundos;
	
	Limpiar Pantalla;
	//Opciones de menu
	Definir EligeSalir Como Logico;
	Definir eleccion Como Numeros;
	//cargamos el mazo de 52 cartas
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
		Escribir 'Elija una opcion:';
		Escribir '  1 - Jugar';
		Escribir '  2 - Ingresar Dinero';
		Escribir '  3 - Consultar Saldo';
		Escribir '  4 - Salir';
		Escribir ' ';
		
		Escribir Sin Saltar'Seleccione una opcion ---';
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
				Escribir 'Eleccion no valida!';
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
			
			// marcamos la carta que sale como leida para que no se repita
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
		Escribir Sin Saltar "Cuanto dinero desea apostar : $";
		leer apuesta;
		Limpiar Pantalla;
		si apuesta > plata Entonces
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


//#############################################....::::Mostrar la manos del crupier por pantalla :::::....###########################################################

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
SubProceso turnoDelJugador(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia, puntosJugador Por Referencia,puntosCrupier Por Referencia ,manoJugador Por Referencia,manoCrupier Por Referencia, ciclo Por Referencia)
	definir turno Como Logico;
	definir plantarse, perdio Como Logico;
	Definir eleccion Como Entero;
	plantarse<-Falso;
	perdio <- falso;
	
	
	mientras (!plantarse y !perdio ) hacer
		
		Escribir ' DINERO DISPONIBLE : $', plata;
		Escribir ' ';
		Escribir 'Elija una opcion:';
		
		Escribir '  1 - Pedir carta';
		Escribir '  2 - Plantarse';
		
		Escribir Sin Saltar'Seleccione una opcion ---';
		Leer eleccion;
		Limpiar Pantalla;

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
				Escribir 'Eleccion no valida!';
		FinSegun
		
	FinMientras
	
FinSubProceso



//#############################################....:::Turno del Crupier::::....#################################################

SubProceso turnoDelCrupier(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia, puntosJugador Por Referencia, puntosCrupier Por Referencia ,manoJugador Por Referencia,manoCrupier Por Referencia)
	definir perdio Como Logico;
	Definir eleccion , ciclo Como Entero;
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
	Definir ganancia, nuevo_plata, plata1 como Real;
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
	Escribir "Se trata de apostar a un solo numero.";
	Escribir "La ganancia en esta apuesta es, lo apostado por 35!";
	Escribir "";
	Escribir "---- Apuesta por color ----";
	Escribir "Se apuesta al color del numero ganador, si sera rojo o negro.";
	Escribir "Con esta apuesta se esta jugando a 18 numeros ya que en la ruleta hay 18 numeros rojos y 18 numeros negros.";
	Escribir "La ganancia en esta apuesta es la suma de lo apostado";
	Escribir "";
	Escribir "---- Apuesta por docena ----";
	Escribir "Se trata de apostar en que docena estara el numero ganador.";
	Escribir "El tapete se divide en 3 docenas, cada una de ellas abarca 12 numeros, por tanto al apostar por una docena se juega a 12 numeros.";
	Escribir "La ganancia en esta apuesta es el doble de lo apostado";
	
	// Inicializar variables
	Escribir "";
	Escribir "Para comenzar. Cuanto dinero quiere ingresar?: ";
	Leer plata1;
	plata <- plata + plata1;
	Limpiar Pantalla;
	apuesta <- Verdadero;
	
	
	// Bucle principal del juego
	Repetir
		
		Escribir "Menu de recomendaciones";
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
						Escribir "Usted gano!!!";
						plata <- plata + (plata_apostado * 35);
						Escribir "Usted tiene ahora de plata: $", plata;
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
								Escribir "Usted gano!!";
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
								Escribir "Usted gano!!";
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

SubProceso JuegoDeDados(plata Por Referencia)
    Definir seguirJugando Como Entero;
    Definir apuesta, ingreso Como Real;
    Definir dado1, dado2 Como Entero;
    Definir resultado Como Entero;
	
    Limpiar Pantalla;
	Escribir "";
	Escribir "* * * * * * * * * * * * * * * * * * * * *";
    Escribir "* * *  Bienvenido al juego de Dados * * *";
	Escribir "* * * * * * * * * * * * * * * * * * * * *";
    Escribir "";
    Esperar 1 Segundos;
	Limpiar Pantalla;
	Escribir "";
	Escribir " * * * * * * * * * * * * * * * * * * * * ";
    Escribir " *  *  Bienvenido al juego de Dados *  *";
	Escribir " * * * * * * * * * * * * * * * * * * * * ";
    Escribir "";
    Esperar 1 Segundos;
	Limpiar Pantalla;
	Escribir "";
	Escribir "* * * * * * * * * * * * * * * * * * * * *";
    Escribir "* * *  Bienvenido al juego de Dados * * *";
	Escribir "* * * * * * * * * * * * * * * * * * * * *";
    Escribir "";
    Esperar 1 Segundos;
	Limpiar Pantalla;
	Escribir "";
	Escribir " * * * * * * * * * * * * * * * * * * * * ";
    Escribir " *  *  Bienvenido al juego de Dados *  *";
	Escribir " * * * * * * * * * * * * * * * * * * * * ";
    Escribir "";
    Esperar 1 Segundos;
	Limpiar Pantalla;

	Escribir "";
	Escribir "*** *** *** INSTRUCCIONES *** *** ***";
	Escribir "";
	Escribir "El objetivo es ganar al lanzar dos dados.";
	Escribir "";
	Escribir "   - Comienzas con un saldo inicial en tu cuenta.";
	Escribir "";
	Escribir "   - Debes realizar una apuesta antes de cada lanzamiento de dados.";
	Escribir "";
	Escribir "   - Se lanzarán dos dados después de realizar la apuesta.";
	Escribir "";
    Escribir "   - Dependiendo del resultado obtenido, ocurren las siguientes situaciones:";
	Escribir "";
	Escribir "     * Si sacas un 7, recuperas tu apuesta.";
	Escribir "";
	Escribir "     * Si sacas un número igual o mayor a 8, ganas el doble de tu apuesta.";
	Escribir "";
	Escribir "     * Si sacas un par de números iguales en los dados (doble), duplicas todo tu saldo.";
	Escribir "";
	Escribir "     * Si la suma de los números en los dados es menor o igual a 6, pierdes tu apuesta.";
    Escribir "";
	Escribir "   - El juego termina cuando decides dejar de jugar o cuando decides no ingresar más dinero.";
    Escribir "";
    Escribir "¡Disfruta del juego y buena suerte!";
	Escribir "";
	Escribir "Presione una tecla para empezar a jugar";
	Esperar Tecla; 
	Limpiar Pantalla;
	
	Escribir "_____________________________________________________________________";
	Escribir "*  *  *  *  *  *  *  *  *  *  ¡JUGUEMOS!  *  *  *  *  *  *  *  *  * ";
	Escribir "---------------------------------------------------------------------";
	Escribir "";
	Escribir "";
    Repetir
        Si plata <= 0 Entonces
            Escribir "Tu saldo es $0 ¿Deseas ingresar dinero? (1 = Sí, 0 = No)";
            Leer seguirJugando;
            Si seguirJugando = 1 Entonces
                Escribir "Ingrese la cantidad de dinero a ingresar: ";
                Leer ingreso;
                plata <- ingreso;
                Limpiar Pantalla;
            Sino
            FinSi
        FinSi
        
        Escribir "";
		Escribir "***** Su saldo es: $", plata, " *****";
        Escribir "";
        Escribir "Ingrese su apuesta: ";
        Leer apuesta;
        
        Si apuesta > plata Entonces
            Escribir "No tienes suficiente saldo para esa apuesta. Inténtalo de nuevo.";
        FinSi
        //Apostamos:
        plata <- plata - apuesta;
        
        // Tiramos los dados
        dado1 <- Aleatorio(1, 6);
        dado2 <- Aleatorio(1, 6);
        resultado <- dado1 + dado2;
        
		Escribir "Has sacado un ", dado1, " y un ", dado2, " para un total de ", resultado;
		MostrarDado(dado1);
        MostrarDado(dado2);
        
        // Verificamos el resultado
		Si resultado = 7 Entonces
			Escribir "¡Recuperas tu apuesta! El total de los dados es 7.";
			plata <- plata + apuesta;
		Sino
			Si resultado >= 8 Entonces
				Escribir "¡Felicidades! Has ganado el doble de tu apuesta.";
				plata <- plata + (apuesta * 2);
			Sino
				Si dado1 = dado2 Entonces
					Escribir "¡Dobles! Has duplicado todo tu saldo. ¡FELICIDADES!";
					plata <- plata * 2;
				Sino
					Si resultado <= 6 Entonces
						Escribir "Lo siento, has perdido.";
					FinSi
				FinSi
			FinSi
		FinSi

        Escribir "***** Su saldo es: $", plata, " *****";
        Escribir "";
        Esperar 2 Segundos;
        Escribir "";
        Escribir "¿Deseas seguir jugando? (1 = Sí, 0 = No)";
        Leer seguirJugando;
        
    Hasta Que seguirJugando = 0
    
    Escribir "Gracias por jugar a los Dados en SOLUCION COIN";
    Esperar 2 Segundos;
    Limpiar Pantalla;
FinSubProceso

//######################## ..............::::: INICIO DE ACERTIJO ::::::.............######################################
//######################## ..............::::: PRESENTACION DEL JUEGO ::::::.............######################################
SubProceso acertijo(plata Por Referencia)
	Escribir "";
	Escribir "                                             ","?????????????????????";
	Escribir "                                            ","????????  ___  ?????????";
	Escribir "                                           ","????????  ?????  ?????????";
	Esperar 1 Segundos;
	Escribir "                                          ","???????????????  ???????????";
	Escribir "                                          ","??????????????  ????????????";
	Escribir "                                          ","?????????????  ?????????????";
	Escribir "                                          ","?????????????__?????????????";
	Esperar 1 Segundos;
	Escribir "                                        ","???????????????__???????????????";
	Escribir "                                        ","?????????????????????????????????";
	Esperar 1 Segundos;
	Escribir "                                       ","  1   ______         _______    1";
	Escribir "                                       ","  1  /     ? \______/    ?  \   1";
	Escribir "                                       ","|||||      ? ? _____    ? ?  |||||";
	Escribir "                                       ","  1  \_______/  / \  \______/    1";
	Esperar 1 Segundos;
	Escribir "                                       ","  1             - -             1";
	Escribir "                                       ","   \        \___________       /";
	Escribir "                                       ","     \______           ______/";
	Escribir "                                       ","            \_________/";
	Escribir "";
	Esperar 2 Segundos;
	Escribir "XXXXXXXXXXX","  XXXXXXXXXXX","  XXXXXXXXX","  XXXXXXXXXX  ","  XXXXXXXXX","  XXXXXXXXXXX","  XXXXXXXXXXX","  XXXXXXXXXXXX","  XXXXXXXXXXX";
	Escribir "XXX     XXX","  XXX     XXX","  XXX      ","  XXX     XXX ","  XXX      ","      XXX    ","      XXX    ","       XXX    ","  XXX     XXX";
	Escribir "XXX     XXX","  XXX        ","  XXX      ","  XXX     XXX ","  XXX      ","      XXX    ","      XXX    ","       XXX    ","  XXX     XXX";
	Escribir "XXXXXXXXXXX","  XXX        ","  XXXXXXXXX","  XXXXXXXXXX  ","  XXXXXXXXX","      XXX    ","      XXX    ","       XXX    ","  XXX     XXX";
	Escribir "XXX     XXX","  XXX        ","  XXX      ","  XXX     XX  ","  XXX      ","      XXX    ","      XXX    ","       XXX    ","  XXX     XXX";
	Escribir "XXX     XXX","  XXX     XXX","  XXX      ","  XXX     XXX ","  XXX      ","      XXX    ","      XXX    ","  XXX  XXX    ","  XXX     XXX";
	Escribir "XXX     XXX","  XXXXXXXXXXX","  XXXXXXXXX","  XXX     XXX ","  XXXXXXXXX","      XXX    ","  XXXXXXXXXXX","  XXXxxXXX    ","  XXXXXXXXXXX";
	Escribir "";
	Escribir "                                 |***************************************************|";
	Escribir "                                 |***      PRESIONE UNA TECLA PARA COMENZAR       ***|"; 
	Escribir "                                 |***************************************************|";
	Esperar Tecla;
	Borrar Pantalla;
	//######################## ..............::::: INGRESO DE PLATA DEL USUARIO ::::::.............######################################
	// Se pide al usuario que ingrese la plata: Se tomara un minimo de 100 valor de plata
	Definir decision, plata_ingresada Como Real;
	Si plata < 100 Entonces
		Escribir "Tu saldo es: ", plata;
		Escribir "Es inferior a 100";
		Escribir "Debes ingresar al menos 100 de plata para la apuesta mínima";
		Escribir "";
		Escribir "Si desea ingresar plata digite 1";
		Escribir "Si desea salir del juego digite 2";
		Leer decision;
		Segun decision Hacer
			1:
				Escribir "Ingrese la cantidad de plata deseada (cantidad mínima para este juego: 100 de plata): ";
				Leer plata_ingresada;
				Si plata_ingresada < 100 Entonces 
					Repetir
						Escribir "Debe digitar un monto superior a 99";
						Escribir "Ingrese la cantidad de plata deseada: ";
						Leer plata_ingresada;
					Hasta Que plata_ingresada > 1
				FinSi
				plata_ingresada <- plata_ingresada + plata;
				// Se llama al subproceso para iniciar el juego
				juegoAcertijo(plata_ingresada);
			2: 
				decisionSalir(decision);
				Borrar Pantalla;
		FinSegun
	FinSi
	Si plata > 100 Entonces
		Escribir "Tu saldo es: ", plata;
		Escribir "¿Desea ingresar más plata?";
		Escribir "";
		Escribir "Si desea ingresar más plata digite 1: ";
		Escribir "Si desea salir del juego digite 2: ";
		Leer decision;
		Segun decision Hacer
			1:
				Escribir "Ingrese la cantidad de plata deseada (cantidad mínima para este juego: 100 de plata): ";
				Leer plata_ingresada;
				Si plata_ingresada < 100 Entonces 
					Repetir
						Escribir "Debe digitar un monto superior a 99";
						Escribir "Ingrese la cantidad de plata deseada: ";
						Leer plata_ingresada;
					Hasta Que plata_ingresada > 1
				FinSi
				plata_ingresada <- plata_ingresada + plata;
				// Se llama al subproceso para iniciar el juego
				juegoAcertijo(plata_ingresada);
			2: 
				decisionSalir(decision);
				Borrar Pantalla;
		FinSegun
	FinSi
FinSubProceso
//################## ........::::: OPCION DE SALIR DEL JUEGO::::::.......################################
SubProceso decisionSalir(decision)				
FinSubProceso
//################## ........::::: INICIA EL LLAMADO A SUBPROCESOS PARA EL JUEGO::::::.......################################
// Se llama al subproceso para pedirle al usuario que valor de plata desea apostar minimo 100 de plata
SubProceso juegoAcertijo(plata_ingresada)
	Definir opcion_apuesta Como Real;
	opcion_apuesta <- apuesta_acertijo(plata_ingresada);
	// Se llama al subproceso para iniciar los acertijos de la parte 1 de acertijos (seran 4 primeros acertijos más faciles que los 6 posteriores)
	Definir parte1 Como Entero;
	parte1 <- 0;
	parte_1(parte1);
	// En este subproceso se llevará a cabo el calculo del resultado de la parte uno para calcular cantidad de respuestas correctas
	// Para calcular al final ganancias o pérdiadas
	Definir resultado1, resultado2, resultado3, resultado4 Como Entero;
	resultado1 <- acertijo_1(parte1);
	resultado2 <- acertijo_2(parte1);
	resultado3 <- acertijo_3(parte1);
	resultado4 <- acertijo_4(parte1);
	// Se llama al subproceso para dar un mensaje sobre el inicio de la parte 2
	Definir parte2 Como Entero;
	parte2 <- 0;
	parte_2(parte2);
	// Se llama al subproceso para iniciar los acertijos de la parte 2 de acertijos (seran 6 de dificultad superior a los primeros 4)
	// En este subproceso se llevará a cabo el calculo del resultado de la parte dos para calcular cantidad de respuestas correctas
	// Para calcular al final ganancias o pérdiadas
	Definir resultadoParteUno, resultadoParteDos, resultadoTotal Como Entero;
	resultadoParteUno <- resultado1 + resultado2 + resultado3 + resultado4; 
	resultadoParteDos <- acertijos_parte_2(parte2);
	// Se llama al subproceso para calcular el resultado final y total de respuestas correctas para calcular 
	// ganancias o perdida de lo apostado
	resultadoTotal <- resultadoFinal(resultadoParteUno, resultadoParteDos, opcion_apuesta, plata_ingresada);
	Escribir "";
	Escribir "Presiona una Tecla para volver al MENU DE SOLUCION COIN";
	Esperar Tecla;
	Borrar Pantalla;
FinSubProceso
//################## ........::::: PEDIDO DE PLATA PARA APOSTAR ::::::.......################################
SubProceso opcion_apuesta <- apuesta_acertijo(plata_ingresada)
	Definir opcion_apuesta Como Real;
	Escribir "";
	Escribir "                                 |***************************************************|";
	Escribir "                                 |***                   APUESTA                   ***|"; 
	Escribir "                                 |***************************************************|";
	Escribir "";
	Escribir "El juego se divide en 2 partes";
	Escribir "";
	Escribir "Porcentajes de ganancia/perdida: ";
	Escribir "";
	Escribir "100% SI SE ACIERTAN: ";
	Escribir "      TODOS LOS ACERTIJOS";
	Escribir "";
	Escribir "30% SI SE ACIERTAN: "; 
	Escribir "      3 DE LA PRIMERA PARTE Y 5 DE LA SEGUNDA PARTE";
	Escribir "      4 DE LA PRIMERA PARTE Y 5 DE LA SEGUNDA PARTE"; 
	Escribir "      3 DE LA PRIMERA PARTE Y 6 DE LA SEGUNDA PARTE";
	Escribir "";
	Escribir "En caso de no obtener las respuestas correctas indicadas para el 100% o el 30% de ganancias";
	Escribir "Ud. perdera todo lo apostado";
	Escribir "";
	Escribir "El monto mínimo para apostar es 100 de plata";
	Escribir "";
	Escribir Sin Saltar "Ingrese el monto que desea Apostar: ";
	Leer opcion_apuesta;
	Mientras opcion_apuesta > plata_ingresada o opcion_apuesta < 100 Hacer
		Escribir "Monto ingresado inválido";
		Escribir "";
		Escribir Sin Saltar "Debe ingresar más de 100 de plata y menos del valor de plata ingresado con anterioridad: ";
		Escribir "";
		Leer opcion_apuesta;
	FinMientras
	Escribir "";
	Escribir "Usted apostará ", opcion_apuesta, " de plata";
	Escribir "";
	Escribir "                                           PRESIONE UNA TECLA PARA CONTINUAR";
	Esperar Tecla;
	Borrar Pantalla;
FinSubProceso
//######################## ..............::::: INICIO PARTE 1 ACERTIJO ::::::.............######################################
// En esta parte 1 se utiliza: 
// Condicional SEGUN con AZAR: para dar 3 opciones de respuestas en diferente orden
// Ciclo MIENTRAS: para dar 15 segundos al usuario para memorizar la respuesta y luego escribirla
// Luego de cada respuesta enviada por el usuario se llama a un subproceso que va calculando la cantidad 
// de respuesta correcta con un contador usando un Condicional Si-Entonces y asi poder almacenar respuestas 
// y poder calcular al final del juego el resultado final y las ganancias o perdida
SubProceso parte_1(parte1)
	Escribir "                                 |***************************************************|";
	Escribir "                                 |***     QUE     COMIENCE      EL     JUEGO      ***|"; 
	Escribir "                                 |***************************************************|";
	Esperar 3 Segundos;
	Borrar Pantalla;
FinSubProceso
SubProceso resultado1 <- acertijo_1(parte1)
	Definir a, s Como Entero;
	Definir opcion Como Caracter;
	Definir resultado1 Como Entero;
	Escribir "";
	Escribir "                             ACERTIJO 1";
	Escribir "";
	Escribir "TENES 15 SEGUNDOS PARA MEMORIZAR LAS RESPUESTAS Y LUEGO ESCRIBIR LA CORRECTA";
	Escribir "";
	Escribir "1. Me rascan continuamente de forma muy placentera, mi voz es muy bien timbrada y mi cuerpo de madera.";
	Escribir "";
	a <- azar(3);
	Segun a Hacer
		0: 
			Escribir "1. GUITARRA";
			Escribir "2. GAITA";
			Escribir "3. BANDONEON";
		1:
			Escribir "1. GAITA";
			Escribir "2. GUITARRA";
			Escribir "3. BANDONEON";
		2:
			Escribir "1. BANDONEON";
			Escribir "2. GUITARRA";
			Escribir "3. GAITA";
	FinSegun
	s <- 15;
	Mientras s>0 Hacer
		Esperar 1 Segundos;
		s <- s - 1;
	FinMientras
	Borrar Pantalla;
	Escribir "";
	Escribir "                                 ATENCIÓN!!!";
	Escribir "DEBES ESCRIBIR LA PALABRA CORRECTA CON EXACTITUD, EN MAYUSCULAS Y SIN TILDES";
	Escribir "";
	Leer opcion;
	Borrar Pantalla;
	Esperar 1 segundo;
	resultado1 <- respuesta1(opcion);
	Esperar 2 segundos;
	Borrar Pantalla;
FinSubProceso
SubProceso resultado1 <- respuesta1(opcion)
	Definir resultado1 Como Entero;
	resultado1 <- 0;
	Si opcion = "GUITARRA" Entonces
		Escribir "";
		Escribir "CORRECTO";
		resultado1 <- resultado1 + 1;
	SiNo
		Si opcion = "GAITA" o opcion = "BANDONEON" Entonces
			Escribir "";
			Escribir "INCORRECTO"; 
		SiNo
			Escribir "";
			Escribir "¡¡¡INCORRECTO!!! Recuerde que debe escribir con exactitud, en mayúsculas y sin tilde la palabra correcta.";
		FinSi
	FinSi
FinSubProceso
SubProceso resultado2 <- acertijo_2(parte1)
	Definir a, s Como Entero;
	Definir opcion Como Caracter;
	Definir resultado2 Como Entero;
	Escribir "";
	Escribir "                             ACERTIJO 2";
	Escribir "";
	Escribir "TENES 15 SEGUNDOS PARA MEMORIZAR LAS RESPUESTAS Y LUEGO ESCRIBIR LA CORRECTA";
	Escribir "";
	Escribir "2. Choco me dice la gente, late mi corazón. El que no sepa mi nombre, es un gran tontorrón.";
	Escribir "";
	a <- azar(3);
	Segun a Hacer
		0: 
			Escribir "1. CHOCOTORTA";
			Escribir "2. CHOCOLATE";
			Escribir "3. CHOCOLATADA";
		1:
			Escribir "1. CHOCOLATE";
			Escribir "2. CHOCOTOROTA";
			Escribir "3. CHOCOLATADA";
		2:
			Escribir "1. CHOCOLATADA";
			Escribir "2. CHOCOTORTA";
			Escribir "3. CHOCOLATE";
	FinSegun
	s <- 15;
	Mientras s>0 Hacer
		Esperar 1 Segundos;
		s <- s - 1;
	FinMientras
	Borrar Pantalla;
	Escribir "";
	Escribir "                                 ATENCIÓN!!!";
	Escribir "DEBES ESCRIBIR LA PALABRA CORRECTA CON EXACTITUD, EN MAYUSCULAS Y SIN TILDES";
	Escribir "";
	Leer opcion;
	Borrar Pantalla;
	Esperar 1 segundo;
	resultado2 <- respuesta2(opcion);
	Esperar 2 segundos;
	Borrar Pantalla;
FinSubProceso
SubProceso resultado2 <- respuesta2(opcion)
	Definir resultado2 Como Entero;
	resultado2 <- 0;
	Si opcion = "CHOCOLATE" Entonces
		Escribir "";
		Escribir "CORRECTO";
		resultado2 <- resultado2 + 1;
	SiNo
		Si opcion = "CHOCOTORTA" o opcion = "CHOCOLATADA" Entonces
			Escribir "";
			Escribir "INCORRECTO"; 
		SiNo
			Escribir "";
			Escribir "¡¡¡INCORRECTO!!! Recuerde que debe escribir con exactitud, en mayúsculas y sin tilde la palabra correcta.";
		FinSi
	FinSi
FinSubProceso
SubProceso resultado3 <- acertijo_3(parte1)
	Definir a, s Como Entero;
	Definir opcion Como Caracter;
	Definir resultado3 Como Entero;
	Escribir "";
	Escribir "                             ACERTIJO 3";
	Escribir "";
	Escribir "TENES 15 SEGUNDOS PARA MEMORIZAR LAS RESPUESTAS Y LUEGO ESCRIBIR LA CORRECTA";
	Escribir "";
	Escribir "3. ¿Qué es lo que no hace preguntas, pero necesita ser contestado?";
	Escribir "";
	a <- azar(3);
	Segun a Hacer
		0: 
			Escribir "1. MEGAFONO";
			Escribir "2. MICROFONO";
			Escribir "3. TELEFONO";
		1:
			Escribir "1. TELEFONO";
			Escribir "2. MICROFONO";
			Escribir "3. MEGAFONO";
		2:
			Escribir "1. MICROFONO";
			Escribir "2. TELEFONO";
			Escribir "3. MEGAFONO";
	FinSegun
	s <- 15;
	Mientras s>0 Hacer
		Esperar 1 Segundos;
		s <- s - 1;
	FinMientras
	Borrar Pantalla;
	Escribir "";
	Escribir "                                 ATENCIÓN!!!";
	Escribir "DEBES ESCRIBIR LA PALABRA CORRECTA CON EXACTITUD, EN MAYUSCULAS Y SIN TILDES";
	Escribir "";
	Leer opcion;
	Borrar Pantalla;
	Esperar 1 segundo;
	resultado3 <- respuesta3(opcion);
	Esperar 2 segundos;
	Borrar Pantalla;
FinSubProceso
SubProceso resultado3 <- respuesta3(opcion)
	Definir resultado3 Como Entero;
	resultado3 <- 0;
	Si opcion = "TELEFONO" Entonces
		Escribir "";
		Escribir "CORRECTO";
		resultado3 <- resultado3 + 1;
	SiNo
		Si opcion = "MICROFONO" o opcion = "MEGAFONO" Entonces
			Escribir "";
			Escribir "INCORRECTO"; 
		SiNo
			Escribir "";
			Escribir "¡¡¡INCORRECTO!!! Recuerde que debe escribir con exactitud, en mayúsculas y sin tilde la palabra correcta.";
		FinSi
	FinSi
FinSubProceso
SubProceso resultado4 <- acertijo_4(parte1)
	Definir a, s Como Entero;
	Definir opcion Como Caracter;
	Definir resultado4 Como Entero;
	Escribir "";
	Escribir "                             ACERTIJO 4";
	Escribir "";
	Escribir "TENES 15 SEGUNDOS PARA MEMORIZAR LAS RESPUESTAS Y LUEGO ESCRIBIR LA CORRECTA";
	Escribir "";
	Escribir "4. Un paciente en un hospital recibe un visitante. Una enfermera le pregunta quién era el visitante."; 
	Escribir "   El paciente le responde: - No tengo hermanos ni hermanas, pero el padre de ese hombre es el hijo de mi padre.";
	Escribir "";
	a <- azar(3);
	Segun a Hacer
		0: 
			Escribir "1. ABUELO";
			Escribir "2. PADRE";
			Escribir "3. HIJO";
		1:
			Escribir "1. PADRE";
			Escribir "2. HIJO";
			Escribir "3. ABUELO";
		2:
			Escribir "1. HIJO";
			Escribir "2. ABUELO";
			Escribir "3. PADRE";
	FinSegun
	s <- 15;
	Mientras s>0 Hacer
		Esperar 1 Segundos;
		s <- s - 1;
	FinMientras
	Borrar Pantalla;
	Escribir "";
	Escribir "                                 ATENCIÓN!!!";
	Escribir "DEBES ESCRIBIR LA PALABRA CORRECTA CON EXACTITUD, EN MAYUSCULAS Y SIN TILDES";
	Escribir "";
	Leer opcion;
	Borrar Pantalla;
	Esperar 1 segundo;
	resultado4 <- respuesta4(opcion);
	Esperar 2 segundos;
	Borrar Pantalla;
FinSubProceso
SubProceso resultado4 <- respuesta4(opcion)
	Definir resultado4 Como Entero;
	resultado4 <- 0;
	Si opcion = "HIJO" Entonces
		Escribir "";
		Escribir "CORRECTO";
		resultado4 <- resultado4 + 1;
	SiNo
		Si opcion = "ABUELO" o opcion = "PADRE" Entonces
			Escribir "";
			Escribir "INCORRECTO"; 
		SiNo
			Escribir "";
			Escribir "¡¡¡INCORRECTO!!! Recuerde que debe escribir con exactitud, en mayúsculas y sin tilde la palabra correcta.";
		FinSi
	FinSi
FinSubProceso
//######################## ..............::::: MENSAJE PARTE 2 DE ACERTIJO ::::::.............######################################
// Se muestra un mensaje de inicio de la parte dos utilizando un ciclo "para" 
SubProceso parte_2(parte2)
	Definir z Como Entero;
	z <- 0;
	Definir contador_acertijos_dificiles Como Entero;
	contador_acertijos_dificiles <- 0;
	Para contador_acertijos_dificiles <- 0 Hasta 4 Con Paso 1 Hacer
		Borrar Pantalla;
		Esperar 1 Segundo;
		Escribir "";
		Escribir "                        |********************************************************************|";
		Escribir "                        |***  A CONTINUACIÓN LOS PRÓXIMOS 6 ACERTIJOS SE PONEN DIFÍCILES  ***|"; 
		Escribir "                        |********************************************************************|";
		Escribir "";
		Escribir "";
		Escribir "                  XXXXXXXXXXXX", "  XXXXXXXXXXX","  XXXXXXXXXXXX", "  XXXXXXXXXXX","  XXXXXXXXXXXX", "  XXXXXXXXXXX";
		Escribir "                       XXX    ", "  XXX     XXX","       XXX    ", "  XXX     XXX","       XXX    ", "  XXX     XXX";
		Escribir "                       XXX    ", "  XXX     XXX","       XXX    ", "  XXX     XXX","       XXX    ", "  XXX     XXX";
		Escribir "                       XXX    ", "  XXXXXXXXXXX","       XXX    ", "  XXXXXXXXXXX","       XXX    ", "  XXXXXXXXXXX";
		Escribir "                       XXX    ", "  XXX     XXX","       XXX    ", "  XXX     XXX","       XXX    ", "  XXX     XXX";
		Escribir "                  XXX  XXX    ", "  XXX     XXX","  XXX  XXX    ", "  XXX     XXX","  XXX  XXX    ", "  XXX     XXX";
		Escribir "                  XXXxxXXX    ", "  XXX     XXX","  XXXxxXXX    ", "  XXX     XXX","  XXXxxXXX    ", "  XXX     XXX";
		contador_acertijos_dificiles <- contador_acertijos_dificiles + 1;
		Esperar 1 Segundo;
		Borrar Pantalla;
		Escribir "";
	FinPara
	Esperar 2 Segundos;
FinSubProceso
//######################## ..............:::::INICIO PARTE 2 DE ACERTIJO::::::.............######################################
// Para mostrar cada acertijo se utiliza:
//ARREGLO: para mostrar el texto de cada acertijo
//Ciclo REPETIR: para pedir una opcion del  1 al 4 de lo contrario se muestra un mensaje para reingrese la opcion deseada
//Condicional Si-Entonces con contador: para calcular respuestas correctas o incorrectas
SubProceso resultadoParteDos <- acertijos_parte_2(parte2)
	Definir opcion_elegida Como Entero;
	Definir resultadoA, resultadoB, resultadoC, resultadoD, resultadoE, resultadoF Como Entero;
	Definir resultadoParteDos Como Entero; 
	Definir acertijos_2 Como Caracter;
	Dimension acertijos_2[7];
	acertijos_2[0] <- "Completa esta secuencia: 16, 06, 68, 88, X, 98. ¿Qué número va en el lugar de la X?";
	acertijos_2[1] <- "Una persona cazó 10 arañas y escarabajos.";
	acertijos_2[2] <- "¿Cuál es la probabilidad de obtener un 6 o un 7 al lanzar un par de dados?";
	acertijos_2[3] <- "El nivel del agua en un embalse es bajo, pero se duplica todos los días. Se necesitan 60 días para llenar el depósito."; 
	acertijos_2[4] <- "¿Cuánto tiempo tarda el depósito en llenarse por la mitad?";
	acertijos_2[5] <- "Antes de ayer, Juan tenía 15 años. El año que viene, tendrá 18. ¿Qué día es hoy?";
	resultadoA <- 0;
	resultadoB <- 0;
	resultadoC <- 0;
	resultadoD <- 0;
	resultadoE <- 0;
	resultadoF <- 0;
	Repetir
		Escribir "";
		Escribir "5. ", acertijos_2[0];
		Escribir "";
		Escribir "DIGITA EL NUMERO DE LA OPCION QUE ELIJAS";
		Escribir "";
		Escribir "1. 78";
		Escribir "2. 77";
		Escribir "3. 97";
		Escribir "4. 79";
		Leer opcion_elegida;
		Esperar 1 Segundo;
		Si opcion_elegida = 1 Entonces
			Escribir "";
			Escribir "CORRECTO";
			resultadoA <- resultadoA + 1;
		SiNo
			Si opcion_elegida > 1 y opcion_elegida < 5 Entonces
				Escribir "";
				Escribir "INCORRECTO";
			SiNo 
				Si opcion_elegida <= 0 o opcion_elegida >= 5 Entonces
					Escribir "";
					Escribir "La opcion digitada no existe. Intentalo de nuevo";
				FinSi
			FinSi
		FinSi
		Escribir "";
		Esperar 2 Segundos;
		Borrar Pantalla;
	Hasta Que opcion_elegida > 0 y opcion_elegida < 5
	Repetir
		Escribir "";
		Escribir "6. ", acertijos_2[1];
		Escribir "   Estos conforman un total de 66 patas.";
		Escribir "   ¿Cuántos animales tiene de cada una de estas especies?";
		Escribir "";
		Escribir "DIGITA EL NUMERO DE LA OPCION QUE ELIJAS";
		Escribir "";
		Escribir "1. 6 ARAÑAS Y 4 ESCARABAJOS";
		Escribir "2. 2 ARAÑAS Y 8 ESCARABAJOS";
		Escribir "3. 3 ARAÑAS Y 7 ESCARABAJOS";
		Escribir "4. 9 ARAÑAS Y 1 ESCARABAJOS";
		Leer opcion_elegida;
		Esperar 1 Segundo;
		Si opcion_elegida = 3 Entonces
			Escribir "";
			Escribir "CORRECTO";
			resultadoB <- resultadoB + 1;
		SiNo
			Si opcion_elegida = 1 o opcion_elegida = 2 o opcion_elegida = 4 Entonces
				Escribir "";
				Escribir "INCORRECTO";
			SiNo 
				Si opcion_elegida <= 0 o opcion_elegida >= 5 Entonces
					Escribir "";
					Escribir "La opcion digitada no existe. Intentalo de nuevo";
				FinSi
			FinSi
		FinSi
		Escribir "";
		Esperar 2 Segundos;
		Borrar Pantalla;
	Hasta Que opcion_elegida > 0 y opcion_elegida < 5
	Repetir
		Escribir "";
		Escribir "7. ", acertijos_2[2];
		Escribir "";
		Escribir "DIGITA EL NUMERO DE LA OPCION QUE ELIJAS";
		Escribir "";
		Escribir "1. 9/35";
		Escribir "2. 6/34";
		Escribir "3. 11/36";
		Escribir "4. 10/37";
		Leer opcion_elegida;
		Esperar 1 Segundo;
		Si opcion_elegida = 3 Entonces
			Escribir "";
			Escribir "CORRECTO";
			resultadoC <- resultadoC + 1;
		SiNo
			Si opcion_elegida = 1 o opcion_elegida = 2 o opcion_elegida = 4 Entonces
				Escribir "";
				Escribir "INCORRECTO";
			SiNo 
				Si opcion_elegida <= 0 o opcion_elegida >= 5 Entonces
					Escribir "";
					Escribir "La opcion digitada no existe. Intentalo de nuevo";
				FinSi
			FinSi
		FinSi
		Escribir "";
		Esperar 2 Segundos;
		Borrar Pantalla;
	Hasta Que opcion_elegida > 0 y opcion_elegida < 5
	Repetir
		Escribir "";
		Escribir "8. ", acertijos_2[3];
		Escribir "   ";
		Escribir "";
		Escribir "DIGITA EL NUMERO DE LA OPCION QUE ELIJAS";
		Escribir "";
		Escribir "1. 59";
		Escribir "2. 30";
		Escribir "3. 49";
		Escribir "4. 15";
		Leer opcion_elegida;
		Esperar 1 Segundo;
		Si opcion_elegida = 1 Entonces
			Escribir "";
			Escribir "CORRECTO";
			resultadoD <- resultadoD + 1;
		SiNo
			Si opcion_elegida > 1 y opcion_elegida < 5 Entonces
				Escribir "";
				Escribir "INCORRECTO";
			SiNo 
				Si opcion_elegida <= 0 o opcion_elegida >= 5 Entonces
					Escribir "";
					Escribir "La opcion digitada no existe. Intentalo de nuevo";
				FinSi
			FinSi
		FinSi
		Escribir "";
		Esperar 2 Segundos;
		Borrar Pantalla;
	Hasta Que opcion_elegida > 0 y opcion_elegida < 5
	Repetir
		Escribir "";
		Escribir "9. ", acertijos_2[4];
		Escribir "";
		Escribir "DIGITA EL NUMERO DE LA OPCION QUE ELIJAS";
		Escribir "";
		Escribir "1. 1 de diciembre";
		Escribir "2. 1 de febrero";
		Escribir "3. 31 de diciembre";
		Escribir "4. 1 de enero";
		Leer opcion_elegida;
		Esperar 1 Segundo;
		Si opcion_elegida = 4 Entonces
			Escribir "";
			Escribir "CORRECTO";
			resultadoE <- resultadoE + 1;
		SiNo
			Si opcion_elegida > 0 y opcion_elegida < 4 Entonces
				Escribir "";
				Escribir "INCORRECTO";
			SiNo 
				Si opcion_elegida <= 0 o opcion_elegida >= 5 Entonces
					Escribir "";
					Escribir "La opcion digitada no existe. Intentalo de nuevo";
				FinSi
			FinSi
		FinSi
		Escribir "";
		Esperar 2 Segundos;
		Borrar Pantalla;
	Hasta Que opcion_elegida > 0 y opcion_elegida < 5
	Repetir
		Escribir "";
		Escribir "10. ", acertijos_2[5];
		Escribir "";
		Escribir "DIGITA EL NUMERO DE LA OPCION QUE ELIJAS";
		Escribir "";
		Escribir "1. MARIANO 19 Y MARTIN 5";
		Escribir "2. MARTIN 17 Y MARIANO 6";
		Escribir "3. MARIANO 5 Y MARTIN 17";
		Escribir "4. MARTIN 19 Y MARIANO 5";
		Leer opcion_elegida;
		Esperar 1 Segundo;
		Si opcion_elegida = 4 Entonces
			Escribir "";
			Escribir "CORRECTO";
			resultadoF <- resultadoF + 1;
		SiNo
			Si opcion_elegida > 0 y opcion_elegida < 4 Entonces
				Escribir "";
				Escribir "INCORRECTO";
			SiNo 
				Si opcion_elegida <= 0 o opcion_elegida >= 5 Entonces
					Escribir "";
					Escribir "La opcion digitada no existe. Intentalo de nuevo";
				FinSi
			FinSi
		FinSi
		Escribir "";
		Esperar 2 Segundos;
		Borrar Pantalla;
	Hasta Que opcion_elegida > 0 y opcion_elegida < 5
	resultadoParteDos <- resultadoA + resultadoB + resultadoC + resultadoD + resultadoE + resultadoF;
FinSubProceso
SubProceso resultadoTotal <- resultadoFinal(resultadoParteUno, resultadoParteDos, opcion_apuesta, plata_ingresada)
	//######################## ..............::::: OBTENCION DE RESULTADOS E IMPRESION DE GANANCIA O PERDIDA ::::::.............######################################
	Definir ganancia, perdida, plata Como Real;
	Definir alerta, mensajeFinal Como Cadena;
	Si resultadoParteUno = 4 y resultadoParteDos = 6 Entonces
		ganancia <- opcion_apuesta;
		alerta <- "FELICITACIONES!!!";
		mensajeFinal <- "Has resuelto los 10 acertijos correctamente";
		Escribir Concatenar(alerta,mensajeFinal);
		Escribir "A tu apuesta de ", opcion_apuesta, " se le suma la ganancia de ", ganancia;
		Escribir "";
		Escribir "El saldo de plata que le queda es: ";
		plata <- plata_ingresada + ganancia;
		Escribir plata, " de plata";
	SiNo
		Si resultadoParteUno = 3 y resultadoParteDos = 5 o resultadoParteUno = 4 y resultadoParteDos = 5 o resultadoParteUno = 3 y resultadoParteDos = 6 Entonces
			ganancia <- opcion_apuesta * 0.3;
			alerta <- "MUY BIEN!!!";
			mensajeFinal <- "Has resuelto la cantidad de acertijos para obtener un 30% de ganancia";
			Escribir Concatenar(alerta,mensajeFinal);
			Escribir "A tu apuesta de ", opcion_apuesta, " se le suma la ganancia de ", ganancia;
			Escribir "";
			Escribir "El saldo de plata que le queda es: ";
			plata <- plata_ingresada + ganancia;
			Escribir plata, " de plata";
		SiNo
			perdida <- opcion_apuesta * 0;
			alerta <- "MAL JUGADO!!!";
			mensajeFinal <- "No has resuelto la cantidad mínima de acertijos para obtener ganancias";
			Escribir Concatenar(alerta,mensajeFinal);
			Escribir "Has perdido los ", opcion_apuesta, " de plata apostados";
			Escribir "";
			Escribir "El saldo de plata que le queda es: ";
			plata <- plata_ingresada - opcion_apuesta;
			Escribir plata, " de plata";
		FinSi
	FinSi
FinSubProceso

// ################################################**** Juego de Adivinanzas: Animales ****######################################################## 
//Ingreso de plata y de apuesta 
SubProceso apostarr(plata por Referencia , apuesta Por Referencia, deci Por Referencia)
	Si (deci <> 0 Y plata == 0) Entonces
		Escribir  " No tienes dinero en tu cuenta, cuanto de deseas cargar:";
		Leer plata;
	SiNo
		Escribir  " Contas con un saldo de $: " , plata ;
	FinSi
	
	Escribir "Tienes un saldo de $: ", plata, " plata.";
	Escribir "¿Cuánto deseas apostar?";
	Leer apuesta;
	Mientras apuesta > plata Hacer
		Escribir "No tienes suficiente plata  para esa apuesta. Inténtalo de nuevo.";
		Escribir "¿Cuánto deseas apostar?";
		Leer apuesta;
	FinMientras
	plata <- plata - apuesta;
FinSubProceso

SubProceso adivinanzasDeAnimales(plata Por Referencia)
	Definir deci, res, x, t,men,v,r,corr,inc,resp,resp1,resp2,resp3,resp4,resp5,resp6,resp7,resp8,resp9,resp10,resp11,resp12,resp13,resp14,resp15,resp16,resp17,resp18,resp19,resp20,resp21,resp22,resp23,resp24,resp25,cont Como Entero;
	Definir nom, j Como Caracter;
	Definir porc Como Real;
	Definir  apuesta, ganancia  Como Real;
	deci <- 1;
	//Dimension vector j (Lista de mejores jugadores)
	Dimension j[20];
	v <- 0;
	t <- 1;
	// Bucle repetitivo Mientras t=1 (Para entrar al menú de opciones)
	Mientras t = 1 hacer
		Borrar Pantalla;
		Escribir "*************Juego de Adivinanzas: Animales *************";
		Escribir " ";
	    Escribir "                    /\_/\"  ;                                                            
		Escribir "               ____/ o o \";
		Escribir "              /~____ =ø= /"  ;                         
		Escribir "             (______)__m_m)";
		Escribir " ";
		Escribir "                  _" ;
		Escribir "                 /.\"  ;                            
		Escribir "                 Y  \";
		Escribir "                /    \";
		Escribir "              //     /";
		Escribir "             |/ /\_================";
		Escribir "             / /";
		Escribir "            / /";
		Escribir "            \/";
		Escribir " ";
		Escribir "               __";
		Escribir "             >(° )";
		Escribir "               )/" ;
		Escribir "              /(____/\";
		Escribir "             /        )";
		Escribir "             \ `  =~~/";
		Escribir "              `---Y-"; 
		Escribir " ";
		Escribir  "               _";
		Escribir  "              C°) , ,";
		Escribir  "              ( \/^U^\";
		Escribir  "               (      \";
		Escribir  "                 i(__.i\*";
		Escribir  "                 /|   / \";
		Escribir  "               o u  o   o";
		Escribir " ";
		Escribir "*************Juego de Adivinanzas: Animales *************";
		Escribir "Elegir una opción:";
		Escribir "1. Partida Nueva";
		Escribir "2. Mejores Jugadores";
		Escribir "3. Salir";
		Escribir "************(___) ***************************************";
		Escribir "            (o o)_____/";
		Escribir "             @@ `    \    moooo!";
		Escribir "             \ ____, / ";
		Escribir "             //    //";
		Escribir "             ^^   ^^";
		// variable men (Lee  la opcion se escoge: 1 , 2 y 3 ) 
		Leer men;  
		// si la variable men es = 1 (Se inicia una partida nueva) y se llama al SubProceso apostar para la inserción de plata
		Si (men = 1)Entonces
			apostarr(plata,apuesta,deci);
			Borrar Pantalla;
			// ciclo Mientras  para Repetir las partidas del juego 
			r <- 1;
			Mientras r = 1 Hacer
				//Inicialización de variables 
				corr <-0;
				inc <- 0;
				Borrar Pantalla;
				Escribir "---Primera Pregunta---";
				//Se elige al azar entre uno y cinco  para la elección de preguntas
				resp <- azar(5)+1;
				Si (resp = 1)Entonces
					Escribir " Con bigotes sensibles y ágil al saltar, caza ratones sin parar.  ";
					Escribir "Qué animal es:";
					Escribir "1. Gato";
					Escribir "2. Conejo";
					Escribir "3. Caballo";
					Escribir "4. Perro";
					Escribir "5. Camello";
					leer res;
					Si (res = 1)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "Come Zanahorias con gran afición, y en el campo salta con emoción";
					Escribir "Qué animal es:";
					Escribir "1. Gato";
					Escribir "2. Caballo";
					Escribir "3. Perro";
					Escribir "4. Conejo";
					Escribir "5. Camello";
					leer res;
					//Muestra y contaviliza la cantidad de respuesta correctas e incorectas
					Si (res = 4)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "Con crin y cola al viento va, corriendo en la pradera sin parar";
					Escribir "Qué animal es:";
					Escribir "1. Caballo";
					Escribir "2. Gato";
					Escribir "3. Conejo";
					Escribir "4. Perro";
					Escribir "5. Camello";
					leer res;
					Si (res = 1)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "Con olfato agudo y lealtad sin fin siempre es amigo, nunca es ruin.";
					Escribir  "Qué animal es:";
					Escribir "1. Gato";
					Escribir "2. Perro";
					Escribir "3. Caballo";
					Escribir "4. Conejo";
					Escribir "5. Camello";
					leer res;
					Si (res = 2)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "En el desierto puede andar, con joroba para almacenar.";
					Escribir "Qué animal es:";
					Escribir "1. Gato";
					Escribir "2. Conejo";
					Escribir "3. Camello";
					Escribir "4. Perro";
					Escribir "5. Caballo";
					leer res;
					Si (res = 3)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				
				
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Escribir "";
				Escribir "---Segunda Pregunta---";
				resp <- azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "En el mar nada con gran destreza, su sonrisa en su mayor belleza";
					Escribir "Qué animal es:";
					Escribir "1. Delfin";
					Escribir "2. Vaca";
					Escribir "3. Oso";
					Escribir "4. Rana";
					Escribir "5. Murciélago";
					leer res;
					Si (res = 1)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "En el campo pasta con gran placer, nos da leche para nuestro café ";
					Escribir "Qué animal es:";
					Escribir "1. Delfín";
					Escribir "2. Oso";
					Escribir "3. Vaca";
					Escribir "4. Rana";
					Escribir "5. Murciélago";
					leer res;
					Si (res = 3)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "En el bosque vive con gran tranquilidad, con su pelaje espeso y su gran bondad";
					Escribir "Qué animal es:";
					Escribir "1. Delfín";
					Escribir "2. Oso";
					Escribir "3. Vaca";
					Escribir "4. Rana";
					Escribir "5. Murciélago";
					leer res;
					Si (res = 2)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "En el estanque salta con gran agilidad, con su canto anuncia la llegada de la humedad";
					Escribir "Qué animal es:";
					Escribir "1. Delfín";
					Escribir "2. Vaca";
					Escribir "3. Oso";
					Escribir "4. Rana";
					Escribir "5. Murciélago";
					leer res;
					Si (res = 4)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "En la noche vuela sin hacer ruido, con sus alas oscuras en el cielo tendido";
					Escribir "Qué animal es:";
					Escribir "1. Delfín";
					Escribir "2. Murciélago";
					Escribir "3. Rana";
					Escribir "4. Vaca";
					Escribir "5. Oso";
					leer res;
					Si (res = 2)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				
				
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Escribir "";
				Escribir "---Tercera Pregunta---";
				resp <- azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "En el desierto se arrastra con sigilo y gran temor, con su aguijón en la cola, veneno lleva en su interior";
					Escribir " Qué animal es:";
					Escribir "1. Escorpión";
					Escribir "2. Búfalo";
					Escribir "3. Peces";
					Escribir "4. Pato";
					Escribir "5. Gorila";
					leer res;
					Si (res = 1)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "En la sabana africana puede verse pastar, con sus cuernos grandes y su pelaje alomar";
					Escribir "Qué animal es:";
					Escribir "1. Peces";
					Escribir "2. Gorila";
					Escribir "3. Pato";
					Escribir "4.  Búfalo";
					Escribir "5. Escorpión";
					leer res;
					Si (res = 4)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "En el agua nadan con gran destreza, en cardúmenes forman gran belleza.";
					Escribir "Qué animal es:";
					Escribir "1. Búfalo";
					Escribir "2. Gorila";
					Escribir "3. Pato";
					Escribir "4. Peces";
					Escribir "5. Escorpión";
					leer res;
					Si (res = 4)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "En la selva vive con gran majestuosidad, con su fuerza y su mirada llena de bondad.";
					Escribir "Qué animal es:";
					Escribir "1. Búfalo";
					Escribir "2. Peces";
					Escribir "3. Gorila";
					Escribir "4. Pato";
					Escribir "5. Escorpión";
					leer res;
					Si (res = 3)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "En lagos y ríos nada con gran habilidad, con su pico en forma de cuchara busca su sustento en la humendad";
					Escribir "Qué animal es:";
					Escribir "1. Pato";
					Escribir "2. Peces";
					Escribir "3. Búfalo";
					Escribir "4. Gorila";
					Escribir "5. Escorpión";
					leer res;
					Si (res = 1)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Escribir "";
				Escribir "---Cuarta Pregunta---";
				resp <- azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "En la selva o en la sabana puede verse andar, con su trompa larga y sus colmillos alomar";
					Escribir " Qué animal es:";
					Escribir "1. Elefante";
					Escribir "2. Ameba";
					Escribir "3. Castor";
					Escribir "4. Jirafa";
					Escribir "5. Rinoceronte";
					leer res;
					Si (res = 1)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "En el microscopio se puede observar, sin forma definifa, es dificil de atrapar";
					Escribir "Qué animal es:";
					Escribir "1. Elefante";
					Escribir "2. Ameba";
					Escribir "3. Castor";
					Escribir "4. Jirafa";
					Escribir "5. Rinoceronte";
					leer res;
					Si (res = 2)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "En el río construye su hogar, con troncos y ramas, sin descansar";
					Escribir "Qué animal es:";
					Escribir "1. Elefante";
					Escribir "2. Castor";
					Escribir "3. Jirafa";
					Escribir "4. Ameba";
					Escribir "5. Rinoceronte";
					leer res;
					Si (res = 2)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "En la sabana su cuello destaca, alcanzando las hojas más altas con gracia";
					Escribir "Qué animal es:";
					Escribir "1. Elefante";
					Escribir "2. Ameba";
					Escribir "3. Castor";
					Escribir "4. Jirafa";
					Escribir "5. Rinoceronte";
					leer res;
					Si (res = 4)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "En la sabana africana puede encontrarse, con su cuerno en la nariz para protegerse";
					Escribir "Qué animal es:";
					Escribir "1. Elefante";
					Escribir "2. Rinoceronte";
					Escribir "3. Ameba";
					Escribir "4. Jirafa";
					Escribir "5. Castor";
					leer res;
					Si (res = 2)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Escribir "";
				Escribir "---Quinta Pregunta---";
				resp <- azar(5)+1;
				
				Si (resp = 1)Entonces
					Escribir "En el bosque aúlla en la noche, cazador astuto, de mirada derroche";
					Escribir "Qué animal es:";
					Escribir "1. Araña";
					Escribir "2. Ratón";
					Escribir "3. Lobo";
					Escribir "4. Mariposa";
					Escribir "5. Ciervo";
					leer res;
					Si (res = 3)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "Teje su tela con gran destreza, en rincones oscuros atrapa su presa.";
					Escribir "Qué animal es:";
					Escribir "1. Lobo";
					Escribir "2. Ratón";
					Escribir "3. Araña";
					Escribir "4. Mariposa";
					Escribir "5. Ciervo";
					leer res;
					Si (res = 3)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "En la casa o en el campo puede estar, buscando comida sin descanzar";
					Escribir "Qué animal es:";
					Escribir "1. Lobo";
					Escribir "2. Araña";
					Escribir "3. Ciervo";
					Escribir "4. Ratón";
					Escribir "5. Mariposa";
					leer res;
					Si (res = 4)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "En el bosque majestuoso puede verse, con sus astas grandes y su mirada alegre";
					Escribir "Qué animal es:";
					Escribir "1. Lobo";
					Escribir "2. Araña";
					Escribir "3. Ratón";
					Escribir "4. Ciervo";
					Escribir "5. Mariposa";
					leer res;
					Si (res = 4)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "De colores brillantes y alas de papel, revolotea en el jardín con gran sencillez.";
					Escribir "Qué animal es:";
					Escribir "1. Mariposa";
					Escribir "2. Lobo";
					Escribir "3. Ratón";
					Escribir "4. Ciervo";
					Escribir "5. Araña"; 
					leer res;
					Si (res = 1)Entonces
						corr <- corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc <- inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Escribir "                   (\-/)";
				Escribir "                  (:O O:)";
				Escribir "                   \   /o\";
				Escribir "                    | |\o \ ";
				Escribir "                    (:) \ o\ ";
				Escribir "                         \o \--_";
				Escribir "                         ( o O";
				Escribir "                         (  O";
				
				// Conocer  resultados
				Escribir " Aprieta ENTER para conocer tus resultados";
				Leer cont;
				// Lectura de Porcentaje de las respuestas correctas
				porc <- (corr/5) *100;
				Borrar Pantalla;
				// Devuelve cantidad de respuestas correctas, incorrectas y el porcentaje sacado
				Escribir "********** Resultados **********";
				Escribir "       {_}";
				Escribir "      °-=\ ";
				Escribir "         \\____(";
				Escribir "        _|/---\\_";
				Escribir "        \        \";
				Escribir " ";
				Escribir "Respuestas correctas: ",corr;
				Escribir "Respuestas incorrectas: ",inc;
				Escribir "Respondiste correctamente el ",porc, "% de las preguntas";
				// Se muestra cuando el porcentaje sacado es de 100%
				Si (porc = 100)Entonces
					Escribir "Tu resultado es Insuperable ¡FELICITACIONES!";
					
					
					Escribir  "                    __     __";
					Escribir  "                   /  \~~~/  \";
					Escribir  "             ,----(     ..    )";
					Escribir  "            /      \__     __/";
					Escribir  "           /|         (\  |(";
					Escribir  "            ^ \   /_ \ /\ | ";
					Escribir  "              |__| |__|  - ";
					
					Escribir  " ";
					ganancia <- apuesta * 5;
					plata <- plata + ganancia + apuesta;
					Escribir " Has ganado ", ganancia , " pesos $. Tu nuevo saldo en plata es de: $ ", plata;
					//Se guarda en el vector el nombre del jugador que acertó todas las respuestas
					Escribir "";
					Escribir "***Digita tu nombre***";
					leer nom;
					j[v] <- nom;
					v <- v + 1;
					Escribir "** ",nom, " Estas registrado dentro de los/as  mejores jugadores/as **";
					
					Escribir "               _" ;
					Escribir "             /  \";
					Escribir "            /|oo \" ;
					Escribir "           (_|  /_)" ;
					Escribir "             `@/  \    _";
					Escribir "              |     \  \\";
					Escribir "              \||    \  ))";
					Escribir "               |||\ /  \//";
					Escribir "             _//|| _\   /";
					Escribir "            (_/(_|(____/";
					
					
				FinSi
				//Se muestra cuando el procentaje es entre 80% y 99%
				Si (porc >=80)y(porc<100)Entonces
					Escribir "Tu resultado es Sobresaliente  ¡BIEN HECHO!";
					
					Escribir "          @..@";
					Escribir "         (----)";
					Escribir "        < I  I >";
					Escribir "          *  *  ";
					Escribir  " ";
					ganancia <- apuesta * 4;
					plata <- plata + ganancia + apuesta;
					Escribir " Has ganado ", ganancia , " pesos $. Tu nuevo saldo en plata es de : $ " , plata;
					
				FinSi
				//Se muestra cuando el porcentaje es entre 60% y 79%
				Si (porc >=60)y(porc<80)Entonces
					Escribir "Tu resultado es Satisfactorio";
					
					Escribir "                   __   __  ";
					Escribir "                 ( s \Y/ s )";
					Escribir "                  \_<>|<>_/";
					Escribir "                   (_/|\_) ";
					
					Escribir  " ";
					ganancia <- apuesta *3;
					plata <- plata + ganancia + apuesta;
					Escribir " Has ganado ", ganancia , " pesos $. Tu nuevo saldo en plata es de: $ " ,plata;
					
					
				FinSi
				//Se muestra cuando el porcentaje es entre 40% y 59%
				Si (porc >=40)y(porc<60)Entonces
					Escribir "Tu resultado es Malo";
					
					Escribir "                     (\____/)";
					Escribir "                     / @__@ \  ";
					Escribir "                    (  (oo)  )";
					Escribir "                      -.~~.-";
					Escribir "                      /    \";
					Escribir "                    @/      \_ ";
					Escribir "                   (/ /    \ \)";
					Escribir "                    WW ---- WW";
					
				    Escribir  " ";
					ganancia <- apuesta * 2;
					plata <- plata + ganancia + apuesta;
					Escribir " Has ganado ", ganancia , " pesos $. Tu nuevo saldo en plata es de: $ ", plata;
					
					
					
				FinSi
				//Se muestra cuando el porcentaje es entre 20% y 39%
				Si (porc >=20)y(porc<40)Entonces
					Escribir "Tu resultado es nefasto";
					
					Escribir "            mm";
					Escribir "         /^(  )^\";
					Escribir "         \,(..),/";
					Escribir "           V~~V";
					Escribir  " ";
					ganancia <- apuesta * 1;
					plata <- plata + ganancia + apuesta;
					Escribir " Has ganado ", ganancia, " pesos $. Tu nuevo saldo en plata es de: $ ",plata;
					
				FinSi
				//Se muestra cuando el porcentaje es entre 0% y 19%
				Si (porc >=0)y(porc<20)Entonces
					Escribir "Fallaste Loser ";
					
					
					Escribir "        \    /\";
					Escribir "         )  ( °)";
					Escribir "        (  /  )";
					Escribir "         \(__)|";
					
					Escribir  " ";
					ganancia <- 0;
					Escribir " Has ganado ", ganancia ,  " pesos $. Tu nuevo saldo en plata es de $ : " ,plata;
				FinSi
				
				
				Escribir "--------------------------------------------------------";
				Escribir "";
				
				// Se da la opción al jugador de repetir o no el juego 
				Escribir "Si deseas jugar otra vez coloca 0 de lo contario aprieta otro numero";
				Leer deci;
				
				//Opción si el jugador desea o no repetir la partida
				Si (deci = 0 )Entonces
					apostarr(plata,apuesta,deci);
					r <- 1;
				Sino 
					r <- 2;  //Se vuelve al Menú principal
				FinSi
				Borrar Pantalla;
				
			FinMientras
		FinSi
		
		// El vector muestra en nombre de los mejores jugadores (Si la variable men en el menú  principal es = 2 )
		Si men = 2 Entonces
			Borrar Pantalla;
			Escribir "********************************";
			Escribir "       Mejores jugadores/as";
		    Escribir "                           /\ /|";
			Escribir "                          |||| |";
			Escribir "                           \ | \";
			Escribir "                       _ _ /  @ @";
			Escribir "                    /    \   =>X<=";
			Escribir "                  /|      |   /";
			Escribir "                  \|     /__| |";
			Escribir "                    \_____\ \__\";
			Escribir "********************************";
			x<-0;
			Mientras v > x Hacer
				Escribir j[x];
				x<-x+1;
			FinMientras
			Esperar tecla;
		FinSi
		// Si el jugador elige la opcion 3 en el menú principal, la variable t es = a 2 para cerrar el ciclo
		Si men = 3 Entonces 
			t <- 2;
		FinSi
		
	FinMientras
	
	//Cierre del Juego 
	Escribir "**************************************************";
	Escribir "  Gracias por jugar" ;
	Escribir "                   __   __  ";
	Escribir "                 ( s \Y/ s )";
	Escribir "                  \_<>|<>_/";
	Escribir "                   (_/|\_) ";
	Escribir "";
    Escribir "**************************************************";
	
	
FinSubProceso

//#################################################################################//
//##########               JACK POT                                    ############//
//##########          MARIANELA SANHUEZA                               ############//
//#################################################################################//

SubProceso jackpot (plata Por Referencia)
	definir desicion  Como Real;
	Definir apuesta, carrete1, carrete2, carrete3, elegir, premio, creditoin  Como Entero;	
	Definir jugadavalida Como Logico;
	desicion <- 1;
	elegir <- 0;
	Escribir "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°";
	Escribir "Bienvenido al JackPot 202";
	Escribir "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°";
	esperar 2 Segundos;
	Limpiar Pantalla;
	Escribir "Tienes ", plata, " plata";
	Repetir
		si plata < 1 
			Entonces
			Escribir "No tiene suficiente dinero para jugar";
			Repetir
				Escribir "¿Quiere ingresar dinero? S=1 N=2";
				Leer desicion;
				Esperar 1 Segundos;
				Limpiar Pantalla;
				segun desicion Hacer
					1:
						Escribir "Ingrese monto";
						leer creditoin;
						plata <- (plata + creditoin);
						Escribir "Tienes ", plata, " plata";
						Esperar 2 Segundos;
						Limpiar Pantalla;
					2:
						Escribir "Gracias por jugar, adiós";
						Esperar 2 Segundos;
						Limpiar Pantalla;
						Escribir "Tienes ", plata, " plata";
						Limpiar Pantalla;
					De Otro Modo:
						Escribir 'Eleccion no valida!';
				FinSegun
				
			Hasta Que desicion = 1 o desicion = 2;
		FinSi	
		si plata > 0 
			Entonces
			Repetir
				Escribir "ingrese su apuesta (max ", plata, " plata, 0 para salir) ";
				Repetir
					jugadavalida <- Falso;
					Leer apuesta;
					Si apuesta > plata
						Entonces
						Escribir "Apuesta inválida. Introduce una cantidad entre 1 y ", plata;
					SiNo
						si apuesta > 0 y apuesta <= plata 
							Entonces
							plata <- (plata - apuesta);
							carrete1<-aleatorio (1,9);
							carrete2<-aleatorio (1,9);
							carrete3<-aleatorio(1,9);
							Escribir "Los carretes muestran:", carrete1, "-", carrete2, "-", carrete3;
							si carrete1=carrete2 y carrete2=carrete3
								Entonces
								premio <- aleatorio (5,10);
								plata <- (plata + premio);
								Escribir  "¡Felicidades! ¡Has ganado ",premio," plata!. Te queda ", plata, " plata";
							SiNo
								Escribir  "Lo siento no has ganado esta vez. Tienes ", plata," plata";
							finsi
							Esperar 3 Segundos;
							Limpiar Pantalla;
							jugadavalida <- verdadero;
						finsi
					FinSi
				Hasta Que (apuesta > 0 y apuesta <= plata) o plata = 0 o apuesta = 0 o jugadavalida
				si plata >= 1 
					Entonces
					escribir "¿Quiere volver a tirar? si=1 no=0";
					Leer elegir;
					Repetir
						Si elegir <> 1 Y elegir <> 0
							Entonces
							Escribir "Eleccion incorrecta. Elija si=1 no=0";
							Leer elegir;
						Sino 
							Si elegir=1 
								Entonces
								escribir "Seguir jugando";
							FinSi
						FinSi
					Hasta Que elegir=1 o elegir=0
					Esperar 3 Segundos;
					Limpiar Pantalla;
				FinSi
			Hasta Que plata <= 0 o apuesta = 0 o elegir = 0
		FinSi
	Hasta Que  desicion = 2 o apuesta = 0 o elegir = 0 
	escribir "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°";
	Escribir "¡Juego terminado Tienes! ", plata, " plata";
	escribir "Gracias por jugar";
	escribir "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°";
	Esperar 2 Segundos;
	Limpiar Pantalla;

FinSubProceso




