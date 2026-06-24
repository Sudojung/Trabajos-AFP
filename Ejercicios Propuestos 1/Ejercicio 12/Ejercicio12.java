import java.util.Scanner;
public class Ejercicio12 {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            String[] romanos = {
                "", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X",
                "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX"
            };
            System.out.print("Introduzca un número (1-20): ");
            if (sc.hasNextInt()) {
                int num = sc.nextInt();
                if (num >= 1 && num <= 20) {
                    System.out.println("El número " + num + " en romano es: " + romanos[num]);
                } else {
                    System.out.println("Error: El número debe estar entre 1 y 20.");
                }
            } else {
                System.out.println("Error: Debe introducir un número entero.");
            }
        }
    }
}
