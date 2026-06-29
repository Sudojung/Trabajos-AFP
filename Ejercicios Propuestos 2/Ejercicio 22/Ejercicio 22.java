import java.util.Scanner;

public class EJERCICIO22DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, i, j, val Como Entero
        int n, i, j, val;

        System.out.println("Ingrese un numero entero positivo n:");
        n = sc.nextInt();

        // Validación ya que nos indica que tiene que ser positivo.
        if (n <= 0) {
            System.out.println("Error: El numero debe ser positivo.");
        } else {
            // Para i <- 1 Hasta n Hacer
            for (i = 1; i <= n; i++) {
                
                // Imprimir espacios para darle forma de pirámide 
                // Para j <- 1 Hasta n - i Hacer
                for (j = 1; j <= n - i; j++) {
                    System.out.print("  "); // Sin saltar
                }

                // Lado izquierdo de la pirámide (pa arriba)
                // Para j <- 0 Hasta i - 1 Hacer
                for (j = 0; j <= i - 1; j++) {
                    val = (i + j) % 10; // MOD se escribe como %
                    System.out.print(val + " "); // Sin saltar
                }

                // Lado derecho de la pirámide (pa abajo)
                // Para j <- i - 2 Hasta 0 Con Paso -1 Hacer
                for (j = i - 2; j >= 0; j--) { // "Con Paso -1" se traduce como "j--"
                    val = (i + j) % 10;
                    System.out.print(val + " "); // Sin saltar
                }

                System.out.println(""); // Salto de línea al terminar la fila
            }
        }

        sc.close();
    }
}
