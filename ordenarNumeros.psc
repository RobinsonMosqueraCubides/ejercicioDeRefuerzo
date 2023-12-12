Funcion nmraleatorio (nmr, ascendente,descentende)
	
	Escribir "Lista original: "
	para i <- 1 hasta 10 Con Paso 1 Hacer
		nmr[i]=Aleatorio(1,10);
		ascendente[i]=nmr[i];
		descentende[i]=nmr[i];
		Escribir nmr[i];
	FinPara
FinFuncion

Funcion OrdenarAscendente(ascendente)
	Para i=1 Hasta 10 Con Paso 1 Hacer 
        Para j=1 Hasta 9 Con Paso 1 Hacer 
            Si ascendente[j] > ascendente[j+1] Entonces
                aux = ascendente[j]; 
				ascendente[j] = ascendente[j+1]; 
				ascendente[j+1] = aux;
				
            Fin Si
        Fin Para
    Fin Para
	Escribir "De forma ascendente"
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Escribir ascendente[i];
	FinPara
	
FinFuncion

Funcion OrdenarDescendente(descentende)
	
	Para i=1 Hasta 10 Con Paso 1 Hacer 
        Para j=1 Hasta 9 Con Paso 1 Hacer 
            Si descentende[j] < descentende[j+1] Entonces
                aux = descentende[j]; 
				descentende[j] = descentende[j+1]; 
				descentende[j+1] = aux;
				
            Fin Si
        Fin Para
    Fin Para
	Escribir "De forma descendente"
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Escribir descentende[i];
	FinPara
	
FinFuncion

Algoritmo ordenarNumeros
	Dimension nmr[10], ascendente[10], descentende[10];
	nmraleatorio(nmr, ascendente, descentende);
	OrdenarAscendente(ascendente);
	OrdenarDescendente(descentende);
FinAlgoritmo
