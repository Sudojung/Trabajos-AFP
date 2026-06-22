#include <iostream>

using namespace std;

int main() {
    int n, a, b, siguiente;

    cout << "Ingrese la cantidad de términos que desea ver: ";
    cin >> n;

    a = 0;
    b = 1;

    cout << "Los primeros " << n << " términos son:" << endl;

    for (int i = 1; i <= n; i++) {
        cout << a << " ";
        siguiente = a + b;
        a = b;
        b = siguiente;
    }

    cout << endl;

    return 0;
}
