#include <iostream>

using namespace std;

int main() {
    int n, m, a, b, siguiente, temp_intercambio;

    cout << "Ingrese el límite inferior (n): ";
    cin >> n;
    cout << "Ingrese el límite superior (m): ";
    cin >> m;

    if (n > m) {
        temp_intercambio = n;
        n = m;
        m = temp_intercambio;
        cout << "Nota: Se acomodaron los límites automáticamente de menor a mayor." << endl;
    }

    a = 0;
    b = 1;

    cout << "Los números de Fibonacci entre " << n << " y " << m << " son:" << endl;

    while (a <= m) {
        if (a >= n) {
            cout << a << " ";
        }
        siguiente = a + b;
        a = b;
        b = siguiente;
    }

    cout << endl;

    return 0;
}
