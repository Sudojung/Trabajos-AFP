#include <iostream>

using namespace std;

int main() {
    int maximo_valor, numero_actual;
    int fila, columna;
    
    cout << "Ingrese el valor maximo hasta el que desea llegar: ";
    cin >> maximo_valor;
    
    if (maximo_valor > 0) {
        numero_actual = 1;
        fila = 1;
        while (numero_actual <= maximo_valor) {
            for (columna = 1; columna <= fila; columna++) {
                if (numero_actual <= maximo_valor) {
                    cout << numero_actual << " ";
                    numero_actual = numero_actual + 1;
                }
            }
            cout << endl;
            fila = fila + 1;
        }
    } else {
        cout << "Error: El valor debe ser mayor a cero." << endl;
    }
    
    return 0;
}
