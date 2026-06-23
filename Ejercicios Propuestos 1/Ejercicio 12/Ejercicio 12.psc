Algoritmo Convertir_Arabigos_A_Romanos
    Definir n Como Entero
    Definir romanos Como Texto
    Dimension romanos[20] 
    
    // valores
    romanos[1]  ← "I"    ; romanos[2]  ← "II"   ; romanos[3]  ← "III"
    romanos[4]  ← "IV"   ; romanos[5]  ← "V"    ; romanos[6]  ← "VI"
    romanos[7]  ← "VII"  ; romanos[8]  ← "VIII" ; romanos[9]  ← "IX"
    romanos[10] ← "X"    ; romanos[11] ← "XI"   ; romanos[12] ← "XII"
    romanos[13] ← "XIII" ; romanos[14] ← "XIV"  ; romanos[15] ← "XV"
    romanos[16] ← "XVI"  ; romanos[17] ← "XVII" ; romanos[18] ← "XVIII"
    romanos[19] ← "XIX"  ; romanos[20] ← "XX"
    
    Escribir "Ingrese un numero del 1 al 20: "
    Leer n
    
    //Validamos el rango 
    Si n >= 1 Y n <= 20 Entonces
        
        Escribir n, " en romano es: ", romanos[n]
    SiNo
        Escribir "Numero fuera de rango."
    FinSi
FinAlgoritmo
