#include <iostream>
#include <string>

using namespace std;

int main() {
    int n, i, mitad, tam;
    string numero, primera, segunda;
    int contador = 0;

    cout << "Ingrese la cantidad de números en la secuencia:" << endl;
    cin >> n;

    for (i = 1; i <= n; i++) {
        cout << "Ingrese el número " << i << ":" << endl;
        cin >> numero;

        tam = numero.length();
        mitad = tam / 2; 

        if (tam % 2 == 0) {
            // Caso par
            primera = numero.substr(0, mitad);         
            segunda = numero.substr(mitad, mitad);     
        } else {
            // Caso impar: se ignora el dígito del medio
            primera = numero.substr(0, mitad);         
            segunda = numero.substr(mitad + 1, mitad); 
        }

        if (primera == segunda) {
            contador++;
            cout << numero << " : SI es número gemelo " << endl;
        } else {
            cout << numero << " : NO es número gemelo " << endl;
        }
    }

    cout << "Cantidad total de números gemelos en la secuencia: " << contador << endl;

    return 0;
}