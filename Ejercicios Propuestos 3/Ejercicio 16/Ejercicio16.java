import java.util.Scanner;

public class Ejercicio16 {

    public static int Particionar(int[] vector, int bajo, int alto) {
        int pivote = vector[alto];
        int i = bajo - 1;
        int j, aux;

        for (j = bajo; j <= alto - 1; j++) {
            if (vector[j] <= pivote) {
                i++;
                aux = vector[i];
                vector[i] = vector[j];
                vector[j] = aux;
            }
        }

        aux = vector[i + 1];
        vector[i + 1] = vector[alto];
        vector[alto] = aux;

        return i + 1;
    }

    public static void AlgoritmoQuickSort(int[] vector, int bajo, int alto) {
        if (bajo < alto) {
            int pi = Particionar(vector, bajo, alto);

            AlgoritmoQuickSort(vector, bajo, pi - 1);
            AlgoritmoQuickSort(vector, pi + 1, alto);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n, i;

        System.out.println("Ingrese la cantidad de elementos del vector:");
        n = sc.nextInt();

        int[] mis_numeros = new int[n];

        for (i = 0; i <= n - 1; i++) {
            System.out.println("Ingrese el valor para la posición " + i + ":");
            mis_numeros[i] = sc.nextInt();
        }

        System.out.println("Vector original:");
        for (i = 0; i <= n - 1; i++) {
            System.out.print(mis_numeros[i] + " ");
        }
        System.out.println("");

        AlgoritmoQuickSort(mis_numeros, 0, n - 1);

        System.out.println("Vector ordenado con QuickSort:");
        for (i = 0; i <= n - 1; i++) {
            System.out.print(mis_numeros[i] + " ");
        }
        System.out.println("");
        sc.close();
    }
}