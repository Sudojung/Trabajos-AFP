#include <iostream>

using namespace std;

int main() {
    long long N_original, N, resultado, posicion, lleva;
    long long digito_actual, digito_anterior, suma, nuevo_digito;
    
    cout << "Ingrese un numero entero positivo para multiplicar por 11: ";
    cin >> N_original;
    
    if (N_original >= 0) {
        N = N_original;
        resultado = 0;
        posicion = 1;
        lleva = 0;
        digito_anterior = 0;
        
        while (N > 0 || digito_anterior > 0 || lleva > 0) {
            digito_actual = N % 10;
            suma = digito_actual + digito_anterior + lleva;
            nuevo_digito = suma % 10;
            lleva = suma / 10;
            resultado = resultado + (nuevo_digito * posicion);
            posicion = posicion * 10;
            digito_anterior = digito_actual;
            N = N / 10;
        }
        cout << "El producto de " << N_original << " x 11 es: " << resultado << endl;
    } else {
        cout << "Error: El numero ingresado debe ser positivo." << endl;
    }
    
    return 0;
}
