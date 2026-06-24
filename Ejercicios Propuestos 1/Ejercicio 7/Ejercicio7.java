import java.util.Scanner;
public class Ejercicio7 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            final int MAXIMO = 100;
            int numeroSecreto = (int) (Math.random() * MAXIMO) + 1;
            boolean acierto = false;
            int intentos = 0; 
            System.out.println("He generado un número entre 1 y " + MAXIMO + ". ¡Intenta adivinarlo!");
            while (!acierto) {
                System.out.print("Introduzca un número: ");
                if (sc.hasNextInt()) {
                    int n = sc.nextInt();
                    intentos++;
                    if (n == numeroSecreto) {
                        acierto = true;
                        System.out.println("¡¡acertaste!!");
                    } else {
                        if (n < numeroSecreto) {
                            System.out.println("El número es mayor"); 
                        } else {
                            System.out.println("El número es menor");
                        }
                    }
                } else {
                    System.out.println("Por favor, introduce un número válido.");
                    sc.next();
                }
            }
            System.out.println("Has necesitado " + intentos + " intentos.");
        }
    }
}