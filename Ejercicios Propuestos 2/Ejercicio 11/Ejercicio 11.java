import java.util.Scanner;

public class EJERCICIO11DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Definir variables como Entero (int) y Real (double)
        int cant, i, dentro;
        double a, b, distC1, distC2;

        // Cantidad total de puntos a evaluar
        System.out.println("¿Cuántos puntos desea evaluar?");
        cant = sc.nextInt();

        dentro = 0; // Contador de puntos que caen en las áreas

        // Para i <- 1 Hasta cant Hacer
        for (i = 1; i <= cant; i++) {
            System.out.println("--- Punto " + i + " ---");
            System.out.println("Ingrese coordenada X:");
            a = sc.nextDouble();
            System.out.println("Ingrese coordenada Y:");
            b = sc.nextDouble();

            // Calculamos la posición del punto respecto a cada centro
            // En Java se usa Math.pow(base, exponente) para elevar al cuadrado
            distC1 = Math.pow(a - 5, 2) + Math.pow(b - 4, 2);
            distC2 = Math.pow(a + 5, 2) + Math.pow(b - 4, 2);

            // Evaluamos si está dentro de c1 O dentro de c2
            // Usamos "||" para el operador lógico "O"
            if (distC1 <= 4 || distC2 <= 9) {
                System.out.println("  -> ¡El punto está dentro!");
                dentro = dentro + 1;
            } else {
                System.out.println("  -> El punto está fuera.");
            }
        }

        System.out.println("--------------------------------------------------");
        System.out.println("Total de puntos dentro de las circunferencias: " + dentro);

        sc.close();
    }
}
