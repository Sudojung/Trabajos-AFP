import java.util.Scanner;

public class Ejercicio64 {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("¿Cuántos presos hay? ");
        int n = scanner.nextInt();
        
        int totalPresos = 0;
        int contadorA = 0, contadorB = 0, contadorC = 0;
        int culpables = 0, altoRiesgo = 0, bajoRiesgo = 0;
        
        for (int i = 1; i <= n; i++) {
            System.out.print("Preso " + i + " - Tipo de pista (A/B/C): ");
            char tipo = scanner.next().charAt(0);
            
            System.out.print("Puntuación total: ");
            int puntuacion = scanner.nextInt();
            
            // Contar tipo de pista
            if (tipo == 'A') contadorA++;
            else if (tipo == 'B') contadorB++;
            else if (tipo == 'C') contadorC++;
            
            // Determinar estatus
            String estatus;
            if (puntuacion > 85) {
                estatus = "Culpable";
                culpables++;
            } else if (puntuacion >= 65) {
                estatus = "Sospechoso de alto riesgo";
                altoRiesgo++;
            } else {
                estatus = "Sospechoso de bajo riesgo";
                bajoRiesgo++;
            }
            
            System.out.println("Estatus: " + estatus + "\n");
            totalPresos++;
        }
        
        // Encontrar tipo más frecuente
        String tipoMasFrecuente = "A";
        int maxTipo = contadorA;
        if (contadorB > maxTipo) {
            tipoMasFrecuente = "B";
            maxTipo = contadorB;
        }
        if (contadorC > maxTipo) {
            tipoMasFrecuente = "C";
            maxTipo = contadorC;
        }
        
        // Mostrar resultados
        System.out.println("\n=== RESULTADOS ===");
        System.out.println("Total de presos: " + totalPresos);
        System.out.println("Culpables: " + culpables);
        System.out.println("Sospechosos alto riesgo: " + altoRiesgo);
        System.out.println("Sospechosos bajo riesgo: " + bajoRiesgo);
        System.out.println("Tipo de pista más frecuente: " + tipoMasFrecuente);
        System.out.println("Porcentaje pista A: " + (contadorA * 100 / totalPresos) + "%");
        System.out.println("Porcentaje pista B: " + (contadorB * 100 / totalPresos) + "%");
        System.out.println("Porcentaje pista C: " + (contadorC * 100 / totalPresos) + "%");
    }
}
