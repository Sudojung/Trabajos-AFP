import java.math.BigInteger;
public class Ejercicio13 {
    public static void main(String[] args) {
        long suma = 0;
        BigInteger producto = BigInteger.ONE;
        for (int i = 20; i <= 400; i += 2) {
            suma += i;
            producto = producto.multiply(BigInteger.valueOf(i));
        }
        System.out.println("Resultados para números pares entre 20 y 400:");
        System.out.println("Suma: " + suma);
        System.out.println("Producto: " + producto);
    }
}