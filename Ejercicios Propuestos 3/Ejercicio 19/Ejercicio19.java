import java.util.Scanner;

public class Ejercicio19 {

    public static void Mezclar(int[] vector, int izquierda, int medio, int derecha) {
        int n1 = medio - izquierda + 1;
        int n2 = derecha - medio;

        int[] L = new int[n1];
        int[] R = new int[n2];

        for (int i = 0; i < n1; i++) L[i] = vector[izquierda + i];
        for (int j = 0; j < n2; j++) R[j] = vector[medio + 1 + j];

        int i = 0, j = 0;
        int k = izquierda;

        while (i < n1 && j < n2) {
            if (L[i] <= R[j]) {
                vector[k] = L[i];
                i++;
            } else {
                vector[k] = R[j];
                j++;
            }
            k++;
        }

        while (i < n1) {
            vector[k] = L[i];
            i++;
            k++;
        }

        while (j < n2) {
            vector[k] = R[j];
            j++;
            k++;
        }
    }

    public static void AlgoritmoMergeSort(int[] vector, int izquierda, int derecha) {
        if (izquierda < derecha) {
            int medio = izquierda + (derecha - izquierda) / 2;

            AlgoritmoMergeSort(vector, izquierda, medio);
            AlgoritmoMergeSort(vector, medio + 1, derecha);

            Mezclar(vector, izquierda, medio, derecha);
        }
    }

    public static void AlgoritmoBubbleSort(int[] vector, int n) {
        int i, j, aux;
        for (i = 0; i <= n - 2; i++) {
            for (j = 0; j <= n - i - 2; j++) {
                if (vector[j] > vector[j + 1]) {
                    aux = vector[j];
                    vector[j] = vector[j + 1];
                    vector[j + 1] = aux;
                }
            }
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n, i;
        long tiempo_inicio, tiempo_fin;
        double t_bubble, t_merge;

        System.out.println("Ingrese la cantidad de elementos para la prueba:");
        n = sc.nextInt();

        int[] vectorA = new int[n];
        int[] vectorB = new int[n];

        for (i = 0; i <= n - 1; i++) {
            System.out.println("Ingrese valor para la posición " + i + ":");
            vectorA[i] = sc.nextInt();
            vectorB[i] = vectorA[i]; // Copia exacta para medir bajo igualdad de condiciones
        }

        // Medición de Bubble Sort
        tiempo_inicio = System.nanoTime();
        AlgoritmoBubbleSort(vectorA, n);
        tiempo_fin = System.nanoTime();
        t_bubble = (tiempo_fin - tiempo_inicio) / 1000000.0; // Conversión a milisegundos

        // Medición de Merge Sort
        tiempo_inicio = System.nanoTime();
        AlgoritmoMergeSort(vectorB, 0, n - 1);
        tiempo_fin = System.nanoTime();
        t_merge = (tiempo_fin - tiempo_inicio) / 1000000.0; // Conversión a milisegundos

        System.out.println("--------------------------------------------------");
        System.out.println("REPORTE DE EFICIENCIA (TIEMPO DE EJECUCIÓN):");
        System.out.println("Tiempo estimado Bubble Sort: " + t_bubble + " ms.");
        System.out.println("Tiempo estimado Merge Sort: " + t_merge + " ms.");
        System.out.println("--------------------------------------------------");

        if (t_merge < t_bubble) {
            System.out.println("Merge Sort fue más eficiente para ordenar este vector.");
        } else {
            System.out.println("Bubble Sort fue igual o más rápido (común en vectores muy pequeños o ya ordenados).");
        }
        sc.close();
    }
}