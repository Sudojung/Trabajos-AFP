import java.util.Scanner;

public class Ejercicio24 {
    static final int VACANTES = 150;
    static final int POSTULANTES = 1000;
    static final int NOTA_MINIMA = 120;
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double[] notas = new double[POSTULANTES];
        double[] notasIngresantes = new double[VACANTES];
        int ingresantes = 0;
        double sumaNotas = 0;
        double notaMinima = Double.MAX_VALUE;
        double notaMaxima = Double.MIN_VALUE;
        for (int i = 0; i < POSTULANTES; i++) {
            System.out.println("\n--- Postulante " + (i + 1) + " ---");
            System.out.print("Correctas en Razonamiento (0-40): ");
            int correctasRazonamiento = scanner.nextInt();
            double notaRazonamiento = (correctasRazonamiento * 2) + ((40 - correctasRazonamiento) * -1);
            System.out.print("Correctas en Ciencias (0-30): ");
            int correctasCiencias = scanner.nextInt();
            double notaCiencias = (correctasCiencias * 3) + ((30 - correctasCiencias) * -1.5);
            System.out.print("Correctas en Letras (0-30): ");
            int correctasLetras = scanner.nextInt();
            double notaLetras = (correctasLetras * 1) + ((30 - correctasLetras) * -0.5);
            double notaFinal = notaRazonamiento + notaCiencias + notaLetras;
            notas[i] = notaFinal;
            sumaNotas += notaFinal;
            if (notaFinal >= NOTA_MINIMA && ingresantes < VACANTES) {
                System.out.println("Nota: " + notaFinal + " - INGRESÓ");
                notasIngresantes[ingresantes] = notaFinal;
                ingresantes++;
                if (notaFinal < notaMinima) notaMinima = notaFinal;
                if (notaFinal > notaMaxima) notaMaxima = notaFinal;
            } else {
                System.out.println("Nota: " + notaFinal + " - NO INGRESÓ");
            }
        }
        double media = sumaNotas / POSTULANTES;
        double varianza = 0;
        for (int i = 0; i < POSTULANTES; i++) {
            varianza += Math.pow(notas[i] - media, 2);
        }
        varianza = varianza / POSTULANTES;
        System.out.println("\n\n=== RESULTADOS FINALES ===");
        System.out.println("Total ingresantes: " + ingresantes);
        System.out.println("Media de notas: " + media);
        System.out.println("Varianza: " + varianza);
        System.out.println("Nota mínima ingresantes: " + notaMinima);
        System.out.println("Nota máxima ingresantes: " + notaMaxima);
    }
}