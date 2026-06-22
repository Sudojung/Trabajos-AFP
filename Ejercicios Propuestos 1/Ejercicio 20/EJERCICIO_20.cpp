#include <iostream>

using namespace std;

int main() {
    int posicion_n, contador, num_triangular;
    
    cout << "Ingrese la posicion del numero triangular (valor de n): ";
    cin >> posicion_n;
    
    if (posicion_n > 0) {
        num_triangular = 0;
        for (contador = 1; contador <= posicion_n; contador++) {
            num_triangular = num_triangular + contador;
        }
        cout << "El numero triangular en la posicion " << posicion_n << " es: " << num_triangular << endl;
    } else {
        cout << "Error: Debe ingresar una posicion valida (entero positivo)." << endl;
    }
    
    return 0;
}
