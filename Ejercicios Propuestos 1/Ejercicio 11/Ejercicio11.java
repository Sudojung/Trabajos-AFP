import java.util.Scanner;
public class Ejercicio11 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            int total = 0, soloA = 0, soloB = 0, ambos = 0, ninguno = 0;
            System.out.println("Encuesta de Productos (1=Acepta, 0=No acepta). Use -1 para finalizar.");
            while (true) {
                System.out.print("¿Acepta producto A? (1/0): ");
                int a = sc.nextInt();
                if (a == -1) break;
                System.out.print("¿Acepta producto B? (1/0): ");
                int b = sc.nextInt();
                total++;
                if (a == 1 && b == 1) ambos++;    
                else if (a == 1 && b == 0) soloA++; 
                else if (a == 0 && b == 1) soloB++; 
                else ninguno++;                    
            }
            if (total > 0) {
                System.out.println("\n--- Resultados ---");
                System.out.println("Total encuestados: " + total);
                System.out.printf("Aceptan A: %.2f%%\n", (double)(soloA + ambos) / total * 100);
                System.out.printf("Aceptan B: %.2f%%\n", (double)(soloB + ambos) / total * 100);
                System.out.printf("Ambos productos: %.2f%%\n", (double)ambos / total * 100);
                System.out.printf("Solo A: %.2f%%\n", (double)soloA / total * 100);
                System.out.printf("Solo B: %.2f%%\n", (double)soloB / total * 100);
                System.out.printf("Ninguno: %.2f%%\n", (double)ninguno / total * 100);
            }
        }
    }
}