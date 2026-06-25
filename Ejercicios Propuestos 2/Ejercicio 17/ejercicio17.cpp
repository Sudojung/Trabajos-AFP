#include <iostream>

using namespace std;

int main() { 
    long long N, temp; 
    int digitos;

    // Validamos que ingresemos un número natural
    do {
        cout << "Ingrese un número natural:" << endl;
        cin >> N;
        
        if (N < 1) {
            cout << "¡Error! Debe ingresar un número natural (mayor o igual a 1)." << endl;
            cout << "Por favor, intente de nuevo." << endl;
            cout << "--------------------------------------------------" << endl;
        }
    } while (N < 1);

    digitos = 0;
    // Guardamos N en una variable temporal para no perder nuestro número original
    temp = N; 
    
    while (temp > 0) {
        // Dividimos entre 10 (en C++ la división entera trunca automáticamente los decimales)
        temp = temp / 10; 
        
        // Sumamos 1 a nuestro contador por cada corte que hacemos
        digitos = digitos + 1;   
    }
    
    cout << "El número " << N << " tiene " << digitos << " dígito(s)." << endl;
    
    return 0;
}