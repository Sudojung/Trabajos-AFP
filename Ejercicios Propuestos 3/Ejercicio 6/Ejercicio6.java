import java.util.Scanner;

public class Ejercicio6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, i, j Como Entero
        // Definir aux Como Caracter (char)
        int n, i, j;
        char aux;

        System.out.println("Ingrese la cantidad de caracteres:");
        n = sc.nextInt();

        // Definir cadena Como Caracter -> Dimension cadena[n]
        char[] cadena = new char[n];

        // Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        for (i = 0; i <= n - 1; i++) {
            System.out.println("Carácter para la posición " + i + ":");
            
            // sc.next().charAt(0) lee una palabra y extrae únicamente el primer carácter
            cadena[i] = sc.next().charAt(0);
        }

        // Algoritmo de Ordenamiento Burbuja (Bubble Sort)
        // Para i <- 0 Hasta n - 2 Con Paso 1 Hacer
        for (i = 0; i <= n - 2; i++) {
            // Para j <- 0 Hasta n - i - 2 Con Paso 1 Hacer
            for (j = 0; j <= n - i - 2; j++) {
                
                // Si cadena[j] > cadena[j+1] Entonces
                // En Java los 'char' se pueden comparar directamente con > o < usando su valor ASCII
                if (cadena[j] > cadena[j + 1]) {
                    aux = cadena[j];
                    cadena[j] = cadena[j + 1];
                    cadena[j + 1] = aux;
                }
            }
        }

        // Mostrar la cadena ordenada
        System.out.println("Cadena ordenada:");
        // Para i <- 0 Hasta n - 1 Con Paso 1 Hacer
        for (i = 0; i <= n - 1; i++) {
            System.out.print(cadena[i]); // Imprime sin saltar de línea
        }
        System.out.println(""); // Salto de línea final
        
        sc.close();
    }
}