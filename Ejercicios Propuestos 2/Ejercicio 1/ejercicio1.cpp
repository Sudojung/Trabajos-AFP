#include <iostream>

using namespace std;

int main() {
    // Definir limite, i, factorial Como Entero
    
    int limite, i;
    long long factorial; 
    
    // Bucle de validación
    do {
        cout << "Ingrese un número entero positivo (mayor o igual a 1):" << endl;
        cin >> limite;
        
        // Si el número es incorrecto, no jala
        if (limite < 1) {
            cout << "¡Error! El número ingresado no es válido." << endl;
            cout << "Por favor, intente de nuevo con un número positivo." << endl;
            cout << "--------------------------------------------------" << endl;
        }
    } while (limite < 1); 
    // "Hasta Que limite >= 1" se traduce como "mientras sea menor que 1"
    
    factorial = 1;
    cout << "--------------------------------------------------" << endl;
    cout << "Los factoriales hasta el " << limite << " son:" << endl;
    
    // par ala impresion 
    for (i = 1; i <= limite; i++) {
        factorial = factorial * i;
        cout << "El factorial de " << i << " es: " << factorial << endl;
    }
    
    return 0;
}