Algoritmo analizador_de_nombres
	Definir opcion, totalNombres Como Entero
	Definir i Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir idBuscar Como Entero
	Definir id Como Entero
	Definir nombre Como Caracter
	Definir cantidadLetras Como Entero
	Definir inicial Como Caracter
	Definir tipoNombre Como Caracter
	Definir idioma Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension nombre[100]
	Dimension cantidadLetras[100]
	Dimension inicial[100]
	Dimension tipoNombre[100]
	Dimension idioma[100]
	Dimension estado[100]
	totalNombres <- 0
	siguienteID <- 1
	//------------------------------------------//
	//--|menu_principal_analizador_de_nombres|--//
	//------------------------------------------//
	Repetir
		Escribir "menu principal analizador de nombres"
		Escribir "1) registrar nombre"
		Escribir "2) editar nombre"
		Escribir "3) eliminar nombre"
		Escribir "4) buscar nombre"
		Escribir "5) listar nombres"
		Escribir "6) ver detalles del nombre"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_nombre|--//
			//----------------------//
			1:
				Escribir "registrar nombre"
				id[totalNombres+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalNombres+1]
				Escribir "ingrese el nombre:"
				Leer nombre[totalNombres+1]
				Escribir "ingrese la cantidad de letras:"
				Leer cantidadLetras[totalNombres+1]
				Escribir "ingrese la inicial:"
				Leer inicial[totalNombres+1]
				Escribir "ingrese el tipo de nombre:"
				Leer tipoNombre[totalNombres+1]
				Escribir "ingrese el idioma:"
				Leer idioma[totalNombres+1]
				Escribir "ingrese el estado:"
				Leer estado[totalNombres+1]
				totalNombres <- totalNombres + 1
				Escribir "nombre registrado correctamente."
				//-------------------//
				//--|editar_nombre|--//
				//-------------------//
			2:
				Escribir "editar nombre"
				Si totalNombres = 0 Entonces
					Escribir "no hay nombres registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalNombres Hacer
						Escribir id[i], " | ", nombre[i], " | ", cantidadLetras[i], " | ", inicial[i], " | ", tipoNombre[i], " | ", idioma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del nombre:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNombres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre:"
							Leer nombre[i]
							Escribir "ingrese la nueva cantidad de letras:"
							Leer cantidadLetras[i]
							Escribir "ingrese la nueva inicial:"
							Leer inicial[i]
							Escribir "ingrese el nuevo tipo de nombre:"
							Leer tipoNombre[i]
							Escribir "ingrese el nuevo idioma:"
							Leer idioma[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "nombre editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un nombre con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_nombre|--//
			//---------------------//
			3:
				Escribir "eliminar nombre"
				Si totalNombres = 0 Entonces
					Escribir "no hay nombres registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalNombres Hacer
						Escribir id[i], " | ", nombre[i], " | ", cantidadLetras[i], " | ", inicial[i], " | ", tipoNombre[i], " | ", idioma[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del nombre:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNombres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalNombres Entonces
								Para j <- i Hasta totalNombres - 1 Hacer
									id[j] <- id[j+1]
									nombre[j] <- nombre[j+1]
									cantidadLetras[j] <- cantidadLetras[j+1]
									inicial[j] <- inicial[j+1]
									tipoNombre[j] <- tipoNombre[j+1]
									idioma[j] <- idioma[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalNombres <- totalNombres - 1
							Escribir "nombre eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un nombre con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_nombre|--//
			//-------------------//
			4:
				Escribir "buscar nombre"
				Si totalNombres = 0 Entonces
					Escribir "no hay nombres registrados."
				SiNo
					Escribir "ingrese el id del nombre:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNombres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", nombre[i], " | ", cantidadLetras[i], " | ", inicial[i], " | ", tipoNombre[i], " | ", idioma[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un nombre con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_nombres|--//
			//--------------------//
			5:
				Escribir "listar nombres"
				Si totalNombres = 0 Entonces
					Escribir "no hay nombres registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalNombres Hacer
						Escribir id[i], " | ", nombre[i], " | ", cantidadLetras[i], " | ", inicial[i], " | ", tipoNombre[i], " | ", idioma[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------//
			//--|ver_detalles_nombre|--//
			//-------------------------//
			6:
				Escribir "ver detalles del nombre"
				Si totalNombres = 0 Entonces
					Escribir "no hay nombres registrados."
				SiNo
					Escribir "ingrese el id del nombre:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalNombres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del nombre"
							Escribir "id: ", id[i]
							Escribir "nombre: ", nombre[i]
							Escribir "cantidad de letras: ", cantidadLetras[i]
							Escribir "inicial: ", inicial[i]
							Escribir "tipo de nombre: ", tipoNombre[i]
							Escribir "idioma: ", idioma[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un nombre con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalNombres = 0 Entonces
					Escribir "no hay nombres registrados."
				SiNo
					sumaLetras <- 0
					mayorLetras <- cantidadLetras[1]
					menorLetras <- cantidadLetras[1]
					Para i <- 1 Hasta totalNombres Hacer
						sumaLetras <- sumaLetras + cantidadLetras[i]
						Si cantidadLetras[i] > mayorLetras Entonces
							mayorLetras <- cantidadLetras[i]
						FinSi
						Si cantidadLetras[i] < menorLetras Entonces
							menorLetras <- cantidadLetras[i]
						FinSi
					FinPara
					promedioLetras <- sumaLetras / totalNombres
					Escribir "estadistica general"
					Escribir "total de nombres: ", totalNombres
					Escribir "promedio de letras: ", promedioLetras
					Escribir "mayor cantidad de letras: ", mayorLetras
					Escribir "menor cantidad de letras: ", menorLetras
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar el analizador de nombres."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo