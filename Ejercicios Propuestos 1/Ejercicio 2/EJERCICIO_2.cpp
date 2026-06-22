#include <iostream>

using namespace std;

int main() {
    int n;
    int suma_pares = 0;
    int suma_impares = 0;
    int suma_multp5 = 0;

    cout << "Ingrese un numero entero" << endl;
    cin >> n;

    for (int i = 1; i <= n; i++) {
        if (i % 2 == 0) {
            suma_pares += i;
        } else {
            suma_impares += i;
        }
        if (i % 5 == 0) {
            suma_multp5 += i;
        }
    }

    cout << "La suma de numeros pares entre 1 y " << n << " es: " << suma_pares << endl;
    cout << "La suma de numeros impares entre 1 y " << n << " es: " << suma_impares << endl;
    cout << "La suma de numeros multiplos de 5 entre 1 y " << n << " es: " << suma_multp5 << endl;

    return 0;
}
