import java.util.Random; // Librería necesaria para leer datos del teclado
import java.util.Scanner;  // ¡FALTABA ESTA! Librería necesaria para generar números aleatorios

public class EJERCICIO7DeGRUPO2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random rand = new Random();

        // Definir variables como Entero (int)
        int dia1, mes1, anio1;
        int dia2, mes2, anio2;
        int maxInt, intentos;

        // Aleatorio(1, 10) -> rand.nextInt(10) genera de 0 a 9, sumamos 1 para que sea de 1 a 10
        maxInt = rand.nextInt(10) + 1;
        intentos = 0;

        System.out.println("¡El sistema ha asignado el límite de intentos!");
        System.out.println("Para esta programa tienes un máximo de: " + maxInt + " intentos.");
        System.out.println("--------------------------------------------------");

        System.out.println("Ingrese el DÍA de la primera fecha (Escriba 0 para salir):");
        dia1 = sc.nextInt();

        // Mientras dia1 <> 0 Y intentos < maxInt Hacer
        while (dia1 != 0 && intentos < maxInt) {

            System.out.println("Ingrese el MES de la primera fecha:");
            mes1 = sc.nextInt();
            System.out.println("Ingrese el AÑO de la primera fecha:");
            anio1 = sc.nextInt();

            // Pedimos la segunda fecha completa
            System.out.println("--- Segunda Fecha ---");
            System.out.println("Ingrese el DÍA de la segunda fecha:");
            dia2 = sc.nextInt();
            System.out.println("Ingrese el MES de la segunda fecha:");
            mes2 = sc.nextInt();
            System.out.println("Ingrese el AÑO de la segunda fecha:");
            anio2 = sc.nextInt();

            System.out.println("--------------------------------------------------");

            // Comparación de las fechas
            if (anio1 < anio2) {
                System.out.println("-> La primera fecha (" + dia1 + "/" + mes1 + "/" + anio1 + ") es anterior.");
            } else if (anio1 > anio2) {
                System.out.println("-> La segunda fecha (" + dia2 + "/" + mes2 + "/" + anio2 + ") es anterior.");
            } else {
                // Si los años son iguales, comparamos los meses
                if (mes1 < mes2) {
                    System.out.println("-> La primera fecha es anterior.");
                } else if (mes1 > mes2) {
                    System.out.println("-> La segunda fecha es anterior.");
                } else {
                    // Si los años y meses son iguales, comparamos los días
                    if (dia1 < dia2) {
                        System.out.println("-> La primera fecha es anterior.");
                    } else if (dia1 > dia2) {
                        System.out.println("-> La segunda fecha es anterior.");
                    } else {
                        System.out.println("-> Ambas fechas son exactamente iguales.");
                    }
                }
            }

            System.out.println("--------------------------------------------------");

            intentos = intentos + 1;

            // Solo pide otra fecha si no se ha alcanzado el límite aleatorio
            if (intentos < maxInt) {
                System.out.println("Ingrese el DÍA de la siguiente primera fecha (Escriba 0 para salir):");
                dia1 = sc.nextInt();
            }
        }

        // Intento final
        if (intentos >= maxInt) {
            System.out.println("Lo siento, se acabó sus intentos.");
        } else {
            System.out.println("Programa finalizado exitosamente.");
        }

        sc.close();
    }
}
