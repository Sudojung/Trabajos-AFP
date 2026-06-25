#include <iostream>

using namespace std;

int main() {
    int mes;

    // pedimos que mes por asi decirlo evaluar
    cout << "Ingrese el número del mes (1 al 12):" << endl;
    cin >> mes;

    // con swicth podremos manejar cual de los 12 meses queremos que nos dea el mensaje
    switch (mes) {
        case 1:
            cout << "Enero - 31 días" << endl;
            break;
        case 2:
            cout << "Febrero - 28 días" << endl;
            break;
        case 3:
            cout << "Marzo - 31 días" << endl;
            break;
        case 4:
            cout << "Abril - 30 días" << endl;
            break;
        case 5:
            cout << "Mayo - 31 días" << endl;
            break;
        case 6:
            cout << "Junio - 30 días" << endl;
            break;
        case 7:
            cout << "Julio - 31 días" << endl;
            break;
        case 8:
            cout << "Agosto - 31 días" << endl;
            break;
        case 9:
            cout << "Septiembre - 30 días" << endl;
            break;
        case 10:
            cout << "Octubre - 31 días" << endl;
            break;
        case 11:
            cout << "Noviembre - 30 días" << endl;
            break;
        case 12:
            cout << "Diciembre - 31 días" << endl;
            break;
        default:
            cout << "Mes inválido" << endl;
            break;
    }

    return 0;
}