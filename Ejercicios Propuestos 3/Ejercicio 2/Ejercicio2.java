import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir cantidad, i Como Entero
        // Definir suma, promedio Como Real
        int cantidad, i;
        double suma, promedio;
        suma = 0;

        System.out.println("Ingrese la cantidad de notas a registrar:");
        cantidad = sc.nextInt();

        // Dimension vectorNotas[cantidad]
        // Creamos el arreglo (vector) de tipo double en Java
        double[] vectorNotas = new double[cantidad];

        System.out.println("Ingrese las notas una por una:");

        // Para i <- 0 Hasta cantidad - 1 Hacer
        for (i = 0; i <= cantidad - 1; i++) {
            System.out.println("Ingrese la nota para la posición " + i + ":");
            vectorNotas[i] = sc.nextDouble(); // sc.nextDouble() lee números con decimales

            suma = suma + vectorNotas[i];
        }

        // Cálculo del promedio
        promedio = suma / cantidad;

        // Resultado final
        System.out.println("El promedio de las notas es: " + promedio);

        sc.close();
    }
}