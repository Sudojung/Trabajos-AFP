#include <iostream>

using namespace std;

// Función para sacar el Máximo Común Divisor
int SacarMCD(int a, int b) {
    // Definir maxDiv, temp Como Entero
    int maxDiv, temp;
    
    // Mientras b <> 0 Hacer
    while (b != 0) {
        temp = b;
        b = a % b; // Operador % es el equivalente a MOD
        a = temp;
    }
    maxDiv = a;
    return maxDiv;
}

int main() {
   
    int num1, den1, num2, den2;
    int numSuma, denSuma, numProd, denProd, mcd;
    
    // Los datos
    cout << "Fracción 1 - Numerador:" << endl;
    cin >> num1;
    cout << "Fracción 1 - Denominador:" << endl;
    cin >> den1;
    
    cout << "Fracción 2 - Numerador:" << endl;
    cin >> num2;
    cout << "Fracción 2 - Denominador:" << endl;
    cin >> den2;
    
    // Si den1 = 0 ó den2 = 0 Entonces
    if (den1 == 0 || den2 == 0) {
        cout << "Error: El denominador no puede ser cero." << endl;
    } else {
        // Simplificamos xd 
        mcd = SacarMCD(num1, den1);        
        num1 = num1 / mcd;
        den1 = den1 / mcd;
        
        mcd = SacarMCD(num2, den2);
        num2 = num2 / mcd;
        den2 = den2 / mcd;
        
        cout << "Fracciones listas para operar: " << num1 << "/" << den1 << " y " << num2 << "/" << den2 << endl;
        
        // suma
        numSuma = (num1 * den2) + (num2 * den1);
        denSuma = den1 * den2;
        
        // Simplificamos la suma
        mcd = SacarMCD(numSuma, denSuma);
        numSuma = numSuma / mcd;
        denSuma = denSuma / mcd;
        
        // producto
        numProd = num1 * num2;
        denProd = den1 * den2;
        
        // Simplificamos el producto
        mcd = SacarMCD(numProd, denProd);
        numProd = numProd / mcd;
        denProd = denProd / mcd;
        
        // impresion uwu
        cout << "Resultado de la SUMA: " << numSuma << "/" << denSuma << endl;
        cout << "Resultado del PRODUCTO: " << numProd << "/" << denProd << endl;
    }
    
    return 0;
}