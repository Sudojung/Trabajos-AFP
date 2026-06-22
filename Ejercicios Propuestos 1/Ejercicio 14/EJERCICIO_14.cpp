#include <iostream>

using namespace std;

int main() {
    int num, menor, mayor, cantidad, suma;
    double promedio;

    suma = 0;
    cantidad = 0;

    cout << "Ingrese números enteros positivos (Escriba 0 para terminar):" << endl;
    cin >> num;

    while (num != 0) {
        if (num < 0) {
            cout << "Error: Solo se permiten números positivos." << endl;
        } else {
            suma += num;
            cantidad += 1;

            if (cantidad == 1) {
                menor = num;
                mayor = num;
            } else {
                if (num < menor) {
                    menor = num;
                }
                if (num > mayor) {
                    mayor = num;
                }
            }
        }
        cin >> num;
    }

    if (cantidad > 0) {
        promedio = static_cast<double>(suma) / cantidad;
        cout << "El número MENOR es: " << menor << endl;
        cout << "El número MAYOR es: " << mayor << endl;
        cout << "El PROMEDIO es: " << promedio << endl;
    } else {
        cout << "No se ingresaron números válidos." << endl;
    }

    return 0;
}
