#include <iostream>
#include <string>

using namespace std;

int main() {
    int numero, residuo;
    string binario;

    // Validamos que ingresemos un número positivo
    do {
        cout << "Ingrese un número decimal positivo:" << endl;
        cin >> numero;

        if (numero < 0) {
            cout << "Error: Debe ingresar un número positivo." << endl;
        }
    } while (numero < 0);

    binario = "";

    // Evaluamos nuestro caso especial para el cero
    if (numero == 0) {
        binario = "0";
    } else {
        
        // Convertimos nuestro número a binario mediante divisiones sucesivas
        while (numero > 0) {
            residuo = numero % 2;
            // Usamos to_string() para convertir nuestro entero a cadena de texto
            binario = to_string(residuo) + binario;
            numero = numero / 2; 
        }
        
    }

    // Imprimimos nuestro resultado final
    cout << "El número en binario es: " << binario << endl;

    return 0;
}