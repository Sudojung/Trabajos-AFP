Algoritmo CompararFechasAleatorio
    Definir dia1, mes1, año1 Como Entero
    Definir dia2, mes2, año2 Como Entero
    Definir maxInt, intentos Como Entero
    
    // El programa elige un número al azar entre 1 y 10 automáticamente
    maxInt <- Aleatorio(1, 10)
    intentos <- 0    
    
    Escribir "¡El sistema ha asignado el límite de intentos!"
    Escribir "Para esta programa tienes un máximo de: ", maxInt, " intentos."
    Escribir "--------------------------------------------------"
    
    Escribir "Ingrese el DÍA de la primera fecha (Escriba 0 para salir):"
    Leer dia1
    
    Mientras dia1 <> 0 Y intentos < maxInt Hacer
        
        Escribir "Ingrese el MES de la primera fecha:"
        Leer mes1
        Escribir "Ingrese el AÑO de la primera fecha:"
        Leer año1
        
        Escribir "--- Segunda Fecha ---"
        Escribir "Ingrese el DÍA de la segunda fecha:"
        Leer dia2
        Escribir "Ingrese el MES de la segunda fecha:"
        Leer mes2
        Escribir "Ingrese el AÑO de la segunda fecha:"
        Leer año2
        
        Escribir "--------------------------------------------------"
        
        // Comparación de las fechas
        Si año1 < año2 Entonces
            Escribir "-> La primera fecha (", dia1, "/", mes1, "/", año1, ") es anterior."
        SiNo
            Si año1 > año2 Entonces
                Escribir "-> La segunda fecha (", dia2, "/", mes2, "/", año2, ") es anterior."
            SiNo
                Si mes1 < mes2 Entonces
                    Escribir "-> La primera fecha es anterior."
                SiNo
                    Si mes1 > mes2 Entonces
                        Escribir "-> La segunda fecha es anterior."
                    SiNo
                        Si dia1 < dia2 Entonces
                            Escribir "-> La primera fecha es anterior."
                        SiNo
                            Si dia1 > dia2 Entonces
                                Escribir "-> La segunda fecha es anterior."
                            SiNo
                                Escribir "-> Ambas fechas son exactamente iguales."
                            FinSi
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
        
        Escribir "--------------------------------------------------"
        
        intentos <- intentos + 1
        
        // Solo pide otra fecha si no se ha alcanzado el límite aleatorio
        Si intentos < maxInt Entonces
            Escribir "Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):"
            Leer dia1
        FinSi
        
    FinMientras
    
    // Intento final
    Si intentos >= maxInt Entonces
        Escribir "Lo siento, se acabó sus intentos."
    SiNo
        Escribir "Programa finalizado exitosamente."
    FinSi
    
FinAlgoritmo
