#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int main() {
    int jefatura, num_presos, preso, num_pistas, pista;
    string tipo_pista;
    int puntos_preso, cont_A, cont_B, cont_C, total_pistas;
    double pct_A, pct_B, pct_C;
    
    for (jefatura = 1; jefatura <= 3; jefatura++) {
        cout << "==================================================" << endl;
        cout << "	PROCESANDO JEFATURA DE POLICIA No " << jefatura << endl;
        cout << "==================================================" << endl;
        
        cont_A = 0;
        cont_B = 0;
        cont_C = 0;
        total_pistas = 0;
        
        cout << "Ingrese la cantidad de presos en esta jefatura: ";
        cin >> num_presos;
        
        for (preso = 1; preso <= num_presos; preso++) {
            cout << "------------------------------------------------" << endl;
            cout << "Datos del Preso No " << preso << ":" << endl;
            puntos_preso = 0;
            
            cout << "¿Cuantas pistas en contra tiene el preso?: ";
            cin >> num_pistas;
            
            for (pista = 1; pista <= num_pistas; pista++) {
                do {
                    cout << "  Ingrese el tipo de pista " << pista << " (A / B / C): ";
                    cin >> tipo_pista;
                    transform(tipo_pista.begin(), tipo_pista.end(), tipo_pista.begin(), ::toupper);
                    
                    if (tipo_pista != "A" && tipo_pista != "B" && tipo_pista != "C") {
                        cout << "  [Error] Tipo invalido. Intente de nuevo con A, B o C." << endl;
                    }
                } while (tipo_pista != "A" && tipo_pista != "B" && tipo_pista != "C");
                
                if (tipo_pista == "A") {
                    puntos_preso = puntos_preso + 20;
                    cont_A = cont_A + 1;
                } else if (tipo_pista == "B") {
                    puntos_preso = puntos_preso + 15;
                    cont_B = cont_B + 1;
                } else {
                    puntos_preso = puntos_preso + 30;
                    cont_C = cont_C + 1;
                }
                total_pistas = total_pistas + 1;
            }
            
            cout << "  Puntuacion Total Obtenida: " << puntos_preso << endl;
            cout << "  ESTATUS: ";
            if (puntos_preso > 85) {
                cout << "CULPABLE" << endl;
            } else if (puntos_preso > 65) {
                cout << "SOSPECHOSO DE ALTO RIESGO" << endl;
            } else {
                cout << "SOSPECHOSO DE BAJO RIESGO" << endl;
            }
        }
        
        cout << endl;
        cout << ">>> REPORTE JEFATURA No " << jefatura << " <<<" << endl;
        cout << "¿Cuantos presos hay: " << num_presos << endl;
        
        if (total_pistas > 0) {
            pct_A = (static_cast<double>(cont_A) / total_pistas) * 100;
            pct_B = (static_cast<double>(cont_B) / total_pistas) * 100;
            pct_C = (static_cast<double>(cont_C) / total_pistas) * 100;
            
            cout << "¿Porcentaje de cada tipo de pista:" << endl;
            cout << "   - Tipo A: " << pct_A << "%" << endl;
            cout << "   - Tipo B: " << pct_B << "%" << endl;
            cout << "   - Tipo C: " << pct_C << "%" << endl;
            
            cout << "¿Tipo de pista mas frecuente: ";
            if (cont_A >= cont_B && cont_A >= cont_C) {
                cout << "Tipo A" << endl;
            } else if (cont_B >= cont_A && cont_B >= cont_C) {
                cout << "Tipo B" << endl;
            } else {
                cout << "Tipo C" << endl;
            }
        } else {
            cout << "  (No se registraron pistas bajo esta jefatura)" << endl;
        }
        cout << endl;
    }
    
    return 0;
}
