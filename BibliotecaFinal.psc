//SubProceso Visualizar
//Parametros ordenados , variable codigo Por Valor , variable digito Por Valor , variable autor Por Valor
//Estructura switch variable codigo se evalua su valor
//Case 1 imprimir por pantalla , Biblioteca vacia
//Case 2 imprimir por pantalla , Datos guardados
//Case 3 imprimir por pantalla , Datos no se guardaron
//Case 4 imprimir por pantalla , No existe libro , variable digito
//Case 5 imprimir por pantalla , Datos libro , variable digito , son
//Case 6 imprimir por pantalla , Datos libro no modificados
//Case 7 imprimir por pantalla , Datos libro , variable digito , modificados
//Case 8 imprimir por pantalla , Datos libro , variable digito , no se modificaron
//Case 9 imprimir por pantalla , Libro borrado
//Case 10 imprimir por pantalla , Libro no se borro
//Case 11 imprimir por pantalla , Libros encontrados
//Case 12 imprimir por pantalla , No se encontraron libros de , variable autor
//Case 13 imprimir por pantalla , Listado libros
SubProceso Visualizar(codigo Por Valor, digito Por Valor, autor Por Valor)
	segun codigo hacer
		1:
			escribir("Biblioteca vacia");
		2:
			escribir("Datos guardados");
		3:
			escribir("Datos no se guardaron");
		4:
			escribir"No existe libro ", digito;
		5:
			escribir"Datos libro " ,digito, " son";
		6:
			escribir("Datos libro no modificados");
		7:
			escribir "Datos libro ", digito, " modificados";
		8:
			escribir"Datos libro ", digito, " no se modificaron";
		9:
			escribir("Libro borrado");
		10:
			escribir("Libro no se borró");
		11:
			escribir("Libros encontrados");
		12:
			escribir"No se encontraron libros de ", autor;
		13:
			escribir("Listado de libros");
	FinSegun
	
FinSubProceso


//Funcion Verificar
//Parametros ordenados , variable pregunta Por Valor
//Valor devuelto por funcion , variable respuesta
//Declarar variable tipo logico , respuesta
//Declarar variable tipo caracter , letra
//Bucle dowhile PRIMARIO variable letra es o s o S o n o N sale del bucle
//Imprimir por pantalla sin saltar linea , pregunta
//Guardar los datos del teclado en variable letra
//Estructura if PRIMARIO variable letra es igual a s o igual a S
//Asignar a variable respuesta valor verdadero
//Estructura else PRIMARIO
//Asignar a variable respuesta valor falso
Funcion  respuesta <-  Verificar(pregunta Por Valor) 
	Definir respuesta Como logico;
	Definir letra Como caracter;
	Repetir
		Escribir sin saltar respuesta;
		leer letra;
	Hasta que letra == "o" o letra == "s" o letra == "n" o letra == "N"
	Si letra == "s" o letra == "S" entonces
		respuesta <- verdadero;
	Sino
		respuesta <- falso;
	FinSi
FinFuncion


//SubProceso Buscar
//Parametros ordenados , matriz libreria Por Referencia , variable contador Por Valor
//Declarar variables tipo entero , indice , j
//Declarar variable tipo cadena , autor
//Estructura if PRIMARIO variable contador mayor cero
//Imprimir por pantalla sin saltar linea , Introduzca autor
//Guardar los datos del teclado en variable autor
//Invocar al SubProceso Visualizar
//Argumentos ordenados , once , cero , string vacio
//Inicializar la variable j a cero
//Bucle for SECUNDARIO desde indice cero hasta indice contador menos uno
//Estructura if TERCIARIO matriz libreria elemento autor igual a variable autor
//Imprimir por pantalla en una linea
//Entre corchetes Libro y variable indice
//Elemento titulo de la matriz libreria
//Elemento autor de la matriz libreria
//Elemento año de la matriz libreria
//Incrementar la variable j una unidad
//Estructura if SECUNDARIO variable j igual cero
//Invocar al SubProceso Visualizar
//Argumentos ordenados , doce , cero , variable autor
//Imprimir por pantalla un string vacio
//Estructura else SECUNDARIO
//Imprimir por pantalla un string vacio
//Estructura else PRIMARIO
//Invocar al SubProceso Visualizar
//Argumentos ordenados , uno , cero , string vacio
//Imprimir por pantalla un string vacio
SubProceso Buscar(libreria Por Referencia, contador Por Valor)
	Definir indice, j Como Entero;
	Definir autor Como Caracter;
	Si contador>0 Entonces
		Escribir Sin Saltar "Introduzca autor";
		Leer autor;
		Visualizar(11,0,"");
		j<-0;
		Para indice<-0 Hasta contador-1 Hacer
			Si libreria[indice,1]=autor Entonces
				Escribir "Libro ", libreria[indice,0], libreria[indice,1], libreria[indice,2];
				j<-j+1;
			FinSi
		FinPara
		Si j=0 Entonces
			Visualizar(12,0,autor);
			Escribir "";
		FinSi
	SiNo
		Visualizar(1,0,"");
		Escribir "";
	FinSi
FinSubProceso


//SubProceso Mostrar
//Parametros ordenados , matriz libreria Por Referencia , variable contador Por Valor
//Declarar variable tipo entero , indice
//Estructura if PRIMARIO variable contador mayor cero
//Imprimir por pantalla sin saltar linea , Introduzca numero de libro a mostrar (0- , variable contador menos uno , )
//Guardar los datos del teclado en variable indice
//Estructura if SECUNDARIO variable indice es menor cero o es mayor variable contador menos uno
//Invocar al SubProceso Visualizar
//Argumentos ordenados , cuatro , variable indice , string vacio
//Imprimir por pantalla un string vacio
//Estructura else SECUNDARIO
//Invocar al SubProceso Visualizar
//Argumentos ordenados , cinco , variable indice , string vacio
//Imprimir por pantalla en lineas distintas
//String TITULO , elemento titulo de la matriz libreria
//String AUTOR , elemento autor de la matriz libreria
//String AÑO , elemento indice de la matriz libreria
//Imprimir por pantalla un string vacio
//Estructura else PRIMARIO
//Invocar al SubProceso Visualizar
//Argumentos ordenados , uno , cero , string vacio
//Imprimir por pantalla un string vacio
SubProceso Mostrar(libreria Por Referencia, contador Por Valor)
	Definir indice Como entero;
	Si contador > 0 entonces
		escribir Sin Saltar "Introduzca número de libro a mostrar (0-", contador - 1, "): " ;
		leer indice;
		Si indice < 0 o indice > contador - 1 entonces
			Visualizar(cuatro, indice, "");
			escribir("");
		Sino
			Visualizar(cinco, indice, "");
			escribir "TITULO: ", libreria[indice,titulo] ;
			escribir"AUTOR: ", libreria[indice,autor];
			escribir"AÑO: ", libreria[indice,anyo];
			escribir("");
			FinSi
	Sino
		Visualizar(uno, cero, "");
		escribir("");
	FinSi
FinSubProceso

//SubProceso Actualizar
//Parametros ordenados , matriz libreria Por Referencia , variable contador Por Valor
//Declarar variable tipo entero , indice
//Declarar variables tipo cadena , titulo , autor , anyo
//Estructura if PRIMARIO variable contador mayor cero
//Imprimir por pantalla sin saltar linea , Introduzca numero de libro a modificar (0- , variable contador menos uno , )
//Guardar los datos del teclado en variable indice
//Estructura if SECUNDARIO variable indice es menor cero o es mayor variable contador menos uno
//Invocar al SubProceso Visualizar
//Argumentos ordenados , cuatro , variable indice , string vacio
//Imprimir por pantalla un string vacio
//Estructura else SECUNDARIO
//Invocar al SubProceso Visualizar
//Argumentos ordenados , cinco , variable indice , string vacio
//Imprimir por pantalla en lineas distintas
//String TITULO , elemento titulo de la matriz libreria
//String AUTOR , elemento autor de la matriz libreria
//String AÑO , elemento indice de la matriz libreria
//Imprimir por pantalla un string vacio
//Estructura if TERCIARIO invocar al SubProceso Verificar
//Argumentos ordenados , ¿Desea modificar los datos de este libro (s,n)?
//Imprimir por pantalla , Introduzca los nuevos datos del libro , variable indice
//Imprimir por pantalla sin saltar linea , TITULO
//Guardar los datos del teclado en variable titulo
//Imprimir por pantalla sin saltar linea , AUTOR
//Guardar los datos del teclado en variable autor
//Imprimir por pantalla sin saltar linea , AÑO
//Guardar los datos del teclado en variable anyo
//Imprimir por pantalla un string vacio
//Estructura if CUATERNARIO invocar al SubProceso Verificar
//Argumentos ordenados , ¿Guardar los nuevos datos introducidos (s,n)?
//Asignar a los elementos de la matriz libreria utilizando la variable indice
//En tres lineas diferentes , variable titulo , variable autor , variable anyo
//Invocar al SubProceso Visualizar
//Argumentos ordenados, siete , variable indice , string vacio
//Imprimir por pantalla un string vacio
//Estructura else CUATERNARIO
//SiNo
//Invocar al SubProceso Visualizar
//Argumentos ordenados , ocho , variable indice , string vacio
//Imprimir por pantalla un string vacio
//FinSi
//Estructura else TERCIARIO
//SiNo
//Invocar al SubProceso Visualizar
//Argumentos ordenados , seis , cero , string vacio
//Imprimir por pantalla un string vacio
//FinSi
//Estructura else PRIMARIO
//Invocar al SubProceso Visualizar
//Argumentos ordenados , uno , cero , string vacio
//Imprimir por pantalla un string vacio
SubProceso Actualizar(libreria Por Referencia, contador Por Valor)
	Definir indice Como Entero;
	Definir titulo, autor, anyo Como Caracter;
	Si contador>0 Entonces
		Escribir Sin Saltar "Introduzca numero de libro a modificar (0-",contador-1,")";
		Leer indice;
		Si indice<0 o indice>contador-1 Entonces
			Visualizar(4,indice,"");
			Escribir "";
		SiNo
			Visualizar(5,indice,"");
			Escribir "Strint TITULO ", libreria[indice,0];
			Escribir "Strint AUTOR ", libreria[indice,1];
			Escribir "Strint AÑO ", libreria[indice,2];
			Escribir "";
			Si Verificar("¿Desea) modificar los datos de este libro (s,n)?") Entonces
				Escribir "Introduza los nuevos datos del libro ",indice;
				Escribir Sin Saltar "TITULO";
				Leer titulo;
				Escribir Sin Saltar "AUTOR";
				Leer autor;
				Escribir Sin Saltar "AÑO";
				Leer anyo;
				Escribir "";
				Si Verificar("¿Guardar los nuevos datos introducidos (s,n)?") Entonces
					libreria[indice,0]<-titulo;
					libreria[indice,1]<-autor;
					libreria[indice,2]<-anyo;
					Visualizar(7,indice,"");
					Escribir "";
				SiNo
					Visualizar(8,indice,"");
					Escribir "";
				FinSi
			SiNo
				Visualizar(6,0,"");
				Escribir "";
			FinSi
		FinSi
	SiNo
		Visualizar(1,0,"");
		Escribir "";
	FinSi
FinSubProceso


SubProceso Menu()
	Escribir "MENU BIBLIOTECA" ;
	Escribir "1) Introducir libro" ;
	Escribir "2) Listar libreria" ;
	Escribir "3) Eliminar libro" ;
	Escribir "4) Buscar libro" ;
	Escribir "5) Mostrar libro" ;
	Escribir "6) Actualizar libro" ;
	Escribir "0) Salir programa" ;
	Escribir "" ;
FinSubProceso

SubProceso Introducir( libreria Por Referencia , contador Por Referencia )
	Definir titulo , autor , anyo Como Cadena ;
	Escribir "Introduzca datos del libro" ;
	Escribir Sin Saltar "TITULO " ;
	Leer titulo ;
	Escribir Sin Saltar "AUTOR " ;
	Leer autor ;
	Escribir Sin Saltar "AÑO " ;
	Leer anyo ;
	//Imprimir por pantalla un string vacio
	//Estructura if PRIMARIO invocar al SubProceso Verificar
	//Argumentos ordenados , ¿Guardar los datos introducidos (s,n)?
	//Invocar al SubProceso Visualizar
	//Argumentos ordenados , dos , cero , string vacio
	//Estructura else PRIMARIO
	//Invocar al SubProceso Verificar
	//Argumentos ordenados , tres , cero , string vacio
	//Imprimir por pantalla un string vacio
	Escribir "";
	Si Verificar("¿Guardar los datos introducidos (s,n)?") Entonces
		libreria[ contador , 0 ] <- titulo ;
		libreria[ contador , 1 ] <- autor ;
		libreria[ contador , 2 ] <- anyo ;
		contador <- contador + 1 ;
		Visualizar(2,0,"");
		Escribir "" ;
	SiNo
		Visualizar(2,0,"");
		Escribir "";
	FinSi
FinSubProceso



SubProceso Listar( libreria Por Referencia , contador Por Valor )
	Definir indice Como Entero ;
	Si contador >= 1 Entonces
		Visualizar(13,0,"");
		//Invocar al SubProceso Verificar
		//Argumentos ordenados , trece , cero , string vacio
		Para indice <- 0 Hasta contador - 1 Hacer
			Escribir "[ Libro " , indice , " ] " , libreria[ indice , 0 ] , " " , libreria[ indice , 1 ] , " ", libreria[ indice , 2 ] ;
		FinPara
		Escribir "" ;
	SiNo
		Visualizar(1,0,"");
		//Invocar al SubProceso Verificar
		//Argumentos ordenados , uno , cero , string vacio
		Escribir "" ;
	FinSi
FinSubProceso



SubProceso Eliminar( libreria Por Referencia , contador Por Referencia )
	Definir indice Como Entero ;
	Si contador >= 1 Entonces
		Escribir Sin Saltar "Introduzca numero de libro a eliminar (0-" , contador - 1 , ")" ;
		Leer indice ;
		Si indice < 0 | indice > contador - 1 Entonces
			//Invocar al SubProceso Verificar
			//Argumentos ordenados , cuatro , variable indice , string vacio
			Visualizar(4,indice,"");
			Escribir "" ;
		SiNo
			//Invocar al SubProceso Visualizar
			//Argumentos ordenados , cinco , variable indice , string vacio
			Visualizar(5,indice,"");
			Escribir "TITULO " , libreria[ indice , 0 ] ;
			Escribir "AUTOR " , libreria[ indice , 1 ] ;
			Escribir "AÑO " , libreria[ indice , 2 ] ;
			Escribir "" ;
			//Estructura if TERCIARIO SubProceso Verificar
			//Argumentos ordenados , ¿Desea Eliminar este libro (s,n)?
			Si Verificar("?Desea Eliminar este libro(s,n)?") Entonces
				libreria[ indice , 0 ] <- "" ;
				libreria[ indice , 1 ] <- "" ;
				libreria[ indice , 2 ] <- "" ;
				Mientras indice < contador - 1 Hacer
					libreria[ indice , 0 ] <- libreria[ indice + 1 , 0 ] ;
					libreria[ indice , 1 ] <- libreria[ indice + 1 , 1 ] ;
					libreria[ indice , 2 ] <- libreria[ indice + 1 , 2 ] ;
					indice <- indice + 1 ;
				FinMientras
				contador <- contador - 1 ;
				
				//Invocar al SubProceso Visualizar
				//Argumentos ordenados , nueve , cero , string vacio
				//Imprimir por pantalla un string vacio
				//Estructura else TERCIARIO
				//Invocar al SubProceso Visualizar
				//Argumentos ordenados , diez , cero , string vacio
				//Imprimir por pantalla un string vacio
				Visualizar(9,0,"");
				Escribir "";
			SiNo
				Visualizar(10,0,"");
				Escribir "";
			FinSi
		FinSi
	SiNo
		//Invocar al SubProceso Visualizar
		//Argumentos ordenados , uno , cero , string vacio
		Visualizar(1,0,"");
		Escribir "" ;
	FinSi
FinSubProceso



Proceso Biblioteca
	Escribir "" ;
	Dimension libreria[ 10 , 3 ] ;
	Definir opcion , contador Como Entero ;
	Definir libreria Como Cadena ;
	contador <- 0 ;
	Repetir
		Menu() ;
		Repetir
			Escribir Sin Saltar "Introduzca opcion (0-6)" ;
			Leer opcion ;
		Hasta Que opcion >= 0 & opcion <= 9
		Segun opcion Hacer
			1 : Introducir( libreria , contador ) ;
			2 : Listar( libreria , contador ) ;
			3 : Eliminar( libreria , contador ) ;
				//Case 4 invocar al SubProceso Buscar
				//Parametros ordenados , matriz libreria , variable contador
				//Case 5 invocar al SubProceso Mostrar
				//Parametros ordenados , matriz libreria , variable contador
				//Case 6 invocar al SubProceso Actualizar
				//Parametros ordenados , matriz libreria , variable contador
			4 : Buscar(libreria, contador) ;
			5 : Mostrar(libreria, contador) ;
			6 : Actualizar(libreria, contador) ;
			4 , 5 , 6 , 7 , 8 , 9 : Escribir "" ;
		FinSegun
	Hasta Que opcion = 0
FinProceso



//Menu Biblioteca
//Aplicacion que gestiona los libros de una biblioteca
//Realizar procesos introducir, listar, eliminar , salir
//Introducir los libros uno a uno guardandolos en la memoria
//Listar todos los libros que almacene la biblioteca
//Eliminar cualquier libro conservando el resto de libros

