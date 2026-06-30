import java.util.Scanner;

public class Ejercicio3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, f, c Como Entero
        int n, f, c;

        System.out.println("Ingrese el tamaño (n) de la matriz cuadrada:");
        n = sc.nextInt();

        // Dimension matriz[n, n]
        // Creamos la matriz (bidimensional) en Java con el tamaño ingresado
        int[][] matriz = new int[n][n];

        // Generamos la matriz identidad
        // Para f <- 0 Hasta n - 1 Hacer
        for (f = 0; f <= n - 1; f++) {
            // Para c <- 0 Hasta n - 1 Hacer
            for (c = 0; c <= n - 1; c++) {
                
                // Si f == c Entonces
                if (f == c) {
                    matriz[f][c] = 1; // Es la diagonal principal
                } else { // Sino
                    matriz[f][c] = 0; // Y el resto de posiciones
                }
            }
        }

        // Mostramos cómo es la matriz 
        // Para f <- 0 Hasta n - 1 Hacer
        for (f = 0; f <= n - 1; f++) {
            // Para c <- 0 Hasta n - 1 Hacer
            for (c = 0; c <= n - 1; c++) {
                // Escribir Sin Saltar matriz[f, c], "  "
                System.out.print(matriz[f][c] + "  ");
            }
            // Escribir "" (Salto de línea por cada fila)
            System.out.println("");
        }

        sc.close();
    }
}