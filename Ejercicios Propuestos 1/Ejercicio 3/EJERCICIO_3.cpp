#include <iostream>

using namespace std;

int main() {
    int multiploo;
    int suma = 0;

    for (int i = 1; i <= 20; i++) {
        multiploo = i * 3;
        suma += multiploo;
    }

    cout << "La suma de los 20 primeros múltiplos de 3 es: " << suma << endl;

    return 0;
}
