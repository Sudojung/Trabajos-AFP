#include <iostream>
#include <cmath> 

using namespace std;

int main() {
    // Definir base, num, den, potencia, resultado, raizz Como Real
    double base, num, den, potencia, resultado, raizz;
    // Definir i Como Entero
    int i;
    
    cout << "Ingrese la base (número real): ";
    cin >> base;
    
    cout << "Ingrese el numerador del exponente: ";
    cin >> num;
    
    cout << "Ingrese el denominador del exponente: ";
    cin >> den;
    
    // Calculamos base^num
    potencia = 1;
    for (i = 1; i <= num; i++) {
        potencia = potencia * base;
    }
    
    // Calculamos la raíz den-esima de potencia
    raizz = potencia / den;   // Valor inicial aproximado
    
    for (i = 1; i <= 50; i++) {   
        
        raizz = ( (den - 1) * raizz + (potencia / (pow(raizz, den - 1))) ) / den;
    }
    
    resultado = raizz;
    
    cout << "El resultado de " << base << " elevado a " << num << "/" << den << " es: " << resultado << endl;
    
    return 0;
}