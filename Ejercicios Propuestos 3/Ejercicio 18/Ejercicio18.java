import java.util.Scanner;

public class Ejercicio18 {

    public static int[][] CrearMatrizDinamica(int filas, int columnas) {
        int[][] nueva_matriz = new int[filas][columnas];
        for (int f = 0; f < filas; f++) {
            for (int c = 0; c < columnas; c++) {
                nueva_matriz[f][c] = 0;
            }
        }
        return nueva_matriz;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n_filas, n_columnas, f, c;

        System.out.println("Ingrese el número de filas de la matriz:");
        n_filas = sc.nextInt();
        System.out.println("Ingrese el número de columnas de la matriz:");
        n_columnas = sc.nextInt();

        // Creamos la matriz dinámicamente llamando a la función
        int[][] mi_matriz = CrearMatrizDinamica(n_filas, n_columnas);

        for (f = 0; f <= n_filas - 1; f++) {
            for (c = 0; c <= n_columnas - 1; c++) {
                System.out.println("Ingrese valor para [" + f + "][" + c + "]:");
                mi_matriz[f][c] = sc.nextInt();
            }
        }

        System.out.println("--------------------------------------------------");
        System.out.println("CONTENIDO DE LA MATRIZ DINÁMICA:");
        for (f = 0; f <= n_filas - 1; f++) {
            for (c = 0; c <= n_columnas - 1; c++) {
                System.out.print(mi_matriz[f][c] + " ");
            }
            System.out.println("");
        }
        System.out.println("--------------------------------------------------");

        // Liberar matriz simulado asignando a null (Doble puntero desconectado)
        mi_matriz = null;
        System.out.println("Memoria dinámica liberada correctamente.");
        sc.close();
    }
}