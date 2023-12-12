Algoritmo maquiDeComida
	
	Dimension precioComida[3];
	precioComida[1]=270;
	precioComida[2]=340;
	precioComida[3]=390;
	Escribir "Seleccione el producto"
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir i ". Producto: " i " " precioComida[i];
	FinPara
	
	bandera = Falso;
	
	Repetir
		Leer producto;
		si producto >= 1 y producto <=3 Entonces
			bandera= Verdadero;
		SiNo
			Escribir "por favor ingrese un numero del 1 al 3"
		FinSi
	Hasta Que bandera
	
	Limpiar Pantalla;
	
	total=calcularValor(precioComida[producto]);
	vueltos(total, precioComida[producto]);
	
FinAlgoritmo

Funcion total<-calcularValor (precio)
	
	bandera = Verdadero;
	aux=0;
	
	Mientras bandera Hacer
		
		bande=falso;
		Repetir
			Escribir "Ingrese la moneda: "
			Leer moneda;
			si moneda = 10 o moneda = 50 o moneda = 100
				bande= Verdadero;
			SiNo
				Escribir "Ingrese una moneda valida";
			FinSi
		Hasta Que bande
		aux= aux+moneda;
		si aux>= precio Entonces
			bandera = Falso;			
		FinSi
		Limpiar Pantalla;
	Fin Mientras
	total= aux;

	
FinFuncion

Funcion vueltos(total, precio)
	
	cambio=total-precio;
	aux=cambio/50
	si trunc(aux) = 0 Entonces
		aux=cambio/10;
		si trunc(aux) <> 0 Entonces
			Escribir "Su cambio es: " aux " de 10";
		SiNo
			Escribir "no hay cambio";
		FinSi
	SiNo
		cM=trunc(aux);
		cambio=cambio-50;
		aux=cambio/10;
		si trunc(aux) <> 0 Entonces
			Escribir "Su cambio es: " cM " de 50 y " aux " de 10";
		SiNo
			Escribir "No hay mas cambio";
		FinSi
	FinSi
	
FinFuncion
	