#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

double random_func() {
    return static_cast<double>(rand() % 1000) / 1000.0;
}

int parte_entera(double numero_real) {
    return static_cast<int>(numero_real);
}

int main() {
    srand(time(0));

    int MAXIMO = 100;
    int numero_secreto, intento, contador;
    double x;

    x = random_func();
    numero_secreto = parte_entera(x * MAXIMO) + 1;

    contador = 0;
    intento = 0;

    cout << "Adivina el número entre 1 y " << MAXIMO << endl;

    while (intento != numero_secreto) {
        cout << "Introduce tu número:" << endl;
        cin >> intento;
        contador = contador + 1;

        if (intento < numero_secreto) {
            cout << "El número es mayor" << endl;
        } else {
            if (intento > numero_secreto) {
                cout << "El número es menor" << endl;
            }
        }
    }

    cout << "Acertaste!" << endl;
    cout << "Número de intentos: " << contador << endl;

    return 0;
}
