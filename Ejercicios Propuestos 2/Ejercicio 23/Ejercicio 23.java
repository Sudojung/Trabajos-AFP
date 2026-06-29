
public class EJERCICIO23DeGRUPO2 {

    // Funcion retorno <- calcular_seno(x, n)
    public static double calcular_seno(double x, int n) {
        double retorno;
        double suma, termino, signo;
        int i;

        suma = x;
        termino = x;
        signo = -1;

        // Calculamos los terminos siguientes
        // Para i <- 1 Hasta n - 1 Con Paso 1 Hacer
        for (i = 1; i <= n - 1; i++) {
            termino = termino * (x * x) / ((2 * i) * (2 * i + 1));
            suma = suma + (signo * termino);
            signo = -signo; // (+, -, +, -)
        }

        retorno = suma;
        return retorno;
    }

    public static void main(String[] args) {
        // Definir variables
        double angulo, limite, paso_angulo;
        double sen_x, cos_x, tan_x;
        int n;

        n = 10; // es lo que nos solicitan
        angulo = 0;
        limite = 2 * Math.PI; // Reemplaza a 2 * PI
        paso_angulo = Math.PI / 8; // Reemplaza a PI / 8

        System.out.println("Angulo (rad) | Tangente");
        System.out.println("------------------------");

        // Mientras angulo <= limite + 0.0001 Hacer
        while (angulo <= limite + 0.0001) {
            
            // Invocación a la función creada arriba
            sen_x = calcular_seno(angulo, n);

            // Calculamos el coseno (Math.sqrt es Raiz y Math.abs es Abs)
            cos_x = Math.sqrt(Math.abs(1 - (sen_x * sen_x)));

            // CASO 1: Ajuste del signo del coseno
            // Si angulo > (PI / 2) Y angulo < (3 * PI / 2) Entonces
            if (angulo > (Math.PI / 2) && angulo < (3 * Math.PI / 2)) {
                cos_x = -cos_x;
            }

            // Caso 2 Division por cero
            // Si Abs(cos_x) < 0.00001 Entonces
            if (Math.abs(cos_x) < 0.00001) {
                System.out.println(angulo + " | infinito");
            } else {
                tan_x = sen_x / cos_x;
                System.out.println(angulo + " | " + tan_x);
            }

            angulo = angulo + paso_angulo;
        }
    }
}
