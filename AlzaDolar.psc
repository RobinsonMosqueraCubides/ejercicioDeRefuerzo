Funcion  Orden(precio, dias)
	aux=0;
	para i <- 1 Hasta dias-1 Con Paso 1 Hacer
		Escribir "Dia " i ": " precio[i];
		aux1=precio[i]-precio[i+1];
		si aux1>aux Entonces
			aux=aux1;
		FinSi
	FinPara
	si aux = 0 Entonces
		Escribir "no hubo alza";
	SiNo
		Escribir "El alza mayor fue: " aux;
	FinSi
	
FinFuncion



Algoritmo AlzaDolar
	
	Escribir "Ingrese el numero de Dias";
	Leer dias;
	Dimension precio[dias],ordenado[dias];
	para i <- 1 Hasta dias Con Paso 1 Hacer
		Escribir "ingrese el valor del dia " i;
		Leer precio[i];
		Limpiar Pantalla;
	FinPara
	
	
	Orden(precio, dias);
	
	
	
FinAlgoritmo
