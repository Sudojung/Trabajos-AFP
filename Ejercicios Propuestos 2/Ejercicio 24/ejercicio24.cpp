#include <iostream>

using namespace std;

//verificamos si el numero es primo
bool verificarPrimo(int num) {
    if (num <= 1) {
        return false; // sabemos por teoria que el 1 ni los negativos son primos
    }
    for (int i = 2; i < num; i++) {
        if (num % i == 0) {
            return false; // Si se puede dividir por otro numero, no es primo
        }
    }
    return true;
}

int main() {
    int numero_ingresado;
    
    cout << "Ingrese un numero natural primo: ";
    cin >> numero_ingresado;
    
    // CASO ESPECIAL: Usamos nuestra funcion para cumplir con lo que me piden
    if (!verificarPrimo(numero_ingresado)) {
        cout << "Error: El numero " << numero_ingresado << " no es primo." << endl;
        return 1; // Cerramos el programa 
    }
    
    // Inicializamos los dos primeros numeros de la secuencia
    int a = 1;
    int b = 1;
    int c;
    
    // Bucle para avanzar en la secuencia hasta igualar o superar el input
    while (b < numero_ingresado) {
        c = a + b;
        a = b; // 'a' siempre guardara el valor del Fibonacci anterior
        b = c; // 'b' es nuestro Fibonacci actual
    }
    
    // Comprobamos si acertamos exactamente en el numero
    if (b == numero_ingresado) {
        // Calculamos el que le sigue en la secuencia
        int siguiente = a + b; 
        
        cout << "¡enhora buena mi kin encontraste un numero Fibonacci!" << endl;
        cout << "La terna es: " << a << ", " << b << ", " << siguiente << endl;
    } else {
        // Si 'b' se pasa de largo 
        cout << "El numero " << numero_ingresado << " es primo, pero NO es un numero Fibonacci." << endl;
    }

    return 0;
}