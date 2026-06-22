#include <iostream>
#include <string>

using namespace std;

int main() {
    string binario, hex = "";
    bool esBinario;

    do {
        cout << "Ingrese un número binario (solo 0 y 1):" << endl;
        cin >> binario;

        esBinario = true;
        for (int j = 0; j < binario.length(); j++) {
            if (binario[j] != '0' && binario[j] != '1') {
                esBinario = false;
                break;
            }
        }

        if (!esBinario) {
            cout << "Error: El texto introducido no es un numero binario." << endl;
        }
    } while (!esBinario);

    while (binario.length() % 4 != 0) {
        binario = "0" + binario;
    }

    for (int i = 0; i < binario.length(); i += 4) {
        string bloque = binario.substr(i, 4);
        string digitoHex = "";

        if (bloque == "0000") digitoHex = "0";
        else if (bloque == "0001") digitoHex = "1";
        else if (bloque == "0010") digitoHex = "2";
        else if (bloque == "0011") digitoHex = "3";
        else if (bloque == "0100") digitoHex = "4";
        else if (bloque == "0101") digitoHex = "5";
        else if (bloque == "0110") digitoHex = "6";
        else if (bloque == "0111") digitoHex = "7";
        else if (bloque == "1000") digitoHex = "8";
        else if (bloque == "1001") digitoHex = "9";
        else if (bloque == "1010") digitoHex = "A";
        else if (bloque == "1011") digitoHex = "B";
        else if (bloque == "1100") digitoHex = "C";
        else if (bloque == "1101") digitoHex = "D";
        else if (bloque == "1110") digitoHex = "E";
        else if (bloque == "1111") digitoHex = "F";

        hex += digitoHex;
    }

    cout << "El número en Hexadecimal (base 16) es: " << hex << endl;

    return 0;
}
