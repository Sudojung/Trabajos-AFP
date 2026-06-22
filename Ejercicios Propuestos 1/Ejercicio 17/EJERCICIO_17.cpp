#include <iostream>

using namespace std;

int main() {
    int contador, NumEmpleados;
    double ptas_hora, horas_trabajadas, salario, FactorExtra, horas_extras;
    
    FactorExtra = 1.5;
    
    cout << "Ingrese la cantidad total de empleados que tiene la empresa: ";
    cin >> NumEmpleados;
    cout << "Ingrese el pago por hora ordinaria: ";
    cin >> ptas_hora;
    
    for (contador = 1; contador <= NumEmpleados; contador++) {
        cout << "Empleado numero " << contador << endl;
        cout << "Ingrese las horas trabajadas: ";
        cin >> horas_trabajadas;
        
        if (horas_trabajadas <= 40) {
            salario = horas_trabajadas * ptas_hora;
        } else {
            horas_extras = horas_trabajadas - 40;
            salario = (40 * ptas_hora) + (horas_extras * ptas_hora * FactorExtra);
        }
        
        cout << "El salario del empleado " << contador << " es: " << salario << endl;
        cout << "------------------------------------------------" << endl;
    }
    
    return 0;
}
