import java.util.Scanner;
public class Ejercicio23 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);    
        System.out.print("Ingrese un número entero: ");
        String numero = scanner.next();      
        String resultado = "";
        resultado += numero.charAt(numero.length() - 1);
        for (int i = numero.length() - 1; i > 0; i--) {
            int digito1 = Character.getNumericValue(numero.charAt(i));
            int digito2 = Character.getNumericValue(numero.charAt(i - 1));
            int suma = digito1 + digito2;
            if (suma >= 10) {
                resultado = (suma % 10) + resultado;
                // Acarreo para el siguiente
                if (i == 1) {
                    resultado = (suma / 10) + resultado;
                }
            } else {
                resultado = suma + resultado;
            }
        }
        resultado = numero.charAt(0) + resultado;
        System.out.println(numero + " × 11 = " + resultado);
    }
}
