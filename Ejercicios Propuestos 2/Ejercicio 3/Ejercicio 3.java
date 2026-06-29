import java.util.Scanner;

public class EJERCICIO3DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir n, i, suma Como Entero
        int n, i, suma;

        // Validación de entrada (Repetir... Hasta Que n > 0)
        do {
            System.out.println("Ingrese un número natural (mayor que 0):");
            n = sc.nextInt();

            if (n <= 0) {
                System.out.println("Error: debe ingresar un número natural positivo.");
            }
            
        } while (n <= 0); // En Java, el do-while se repite MIENTRAS la condición sea verdadera

        suma = 0;

        // Para i <- 1 Hasta n Con Paso 1 Hacer
        for (i = 1; i <= n; i++) {
            suma = suma + (i * i);
        }

        // Mostrar el resultado
        System.out.println("La suma de los cuadrados de los " + n + " primeros números naturales es: " + suma);

        sc.close();
    }
}
