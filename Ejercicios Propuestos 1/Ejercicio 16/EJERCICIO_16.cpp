#include <iostream>

using namespace std;

int main() {
    int numero;
    int suma_divisores = 0;

    cout << "Ingrese un número entero positivo: ";
    cin >> numero;

    if (numero <= 0) {
        cout << "Error: El número debe ser positivo." << endl;
    } else {
        for (int i = 1; i < numero; i++) {
            if (numero % i == 0) {
                suma_divisores += i;
            }
        }

        if (suma_divisores == numero) {
            cout << "El número " << numero << " SÍ es un número perfecto." << endl;
        } else {
            cout << "El número " << numero << " NO es un número perfecto." << endl;
        }
    }

    return 0;
}
