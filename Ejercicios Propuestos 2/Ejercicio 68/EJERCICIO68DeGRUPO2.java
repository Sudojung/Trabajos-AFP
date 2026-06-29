import java.util.Scanner;

public class EJERCICIO68DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, i Como Entero
        // Definir e, fact Como Real (double)
        int n, i;
        double e, fact;

        System.out.println("Introduce el número de términos (n) para aproximar e:");
        n = sc.nextInt();

        // Inicialización de variables
        e = 1;       // El primer término (1/ 0! = 1)
        fact = 1;    // Guarda el valor del factorial acumulándose

        // Para i <- 1 Hasta n - 1 Hacer
        for (i = 1; i <= n - 1; i++) {
            fact = fact * i;
            
            // Usamos 1.0 para asegurar que la división sea real y no entera
            e = e + (1.0 / fact);
        }

        // Mostrar el resultado
        System.out.println("El valor aproximado de e con " + n + " términos es: " + e);

        sc.close();
    }
}