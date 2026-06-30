import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;

public class Ejercicio12 {
    public static void main(String[] args) {
        String nombre;
        double nota, suma_notas, promedio;
        int contador_estudiantes;

        suma_notas = 0;
        contador_estudiantes = 0;

        // Nombre del archivo estándar
        String nombreArchivo = "estudiantes.txt";
        File archivo = new File(nombreArchivo);

        // AUTO-CREACIÓN: Si el sistema no lo encuentra, lo crea con datos de prueba
        if (!archivo.exists()) {
            System.out.println("⚠️ El archivo no existía. Creando '" + nombreArchivo + "' automáticamente con datos de prueba...");
            try {
                PrintWriter escritor = new PrintWriter(archivo);
                escritor.println("Juan 8.5");
                escritor.println("Maria 9.2");
                escritor.println("Carlos 7.0");
                escritor.close();
                System.out.println("¡Archivo creado con éxito en: " + archivo.getAbsolutePath() + "!\n");
            } catch (Exception e) {
                System.out.println("No se pudo crear el archivo automáticamente.");
            }
        }

        System.out.println("Leyendo datos desde el archivo '" + nombreArchivo + "'...");
        System.out.println("--------------------------------------------------");

        try {
            Scanner lector = new Scanner(archivo);

            while (lector.hasNext()) {
                nombre = lector.next();
                // Validar que venga un número para evitar errores de formato regional
                if (lector.hasNextDouble()) {
                    nota = lector.nextDouble();
                    System.out.println("Estudiante: " + nombre + " | Nota: " + nota);
                    suma_notas = suma_notas + nota;
                    contador_estudiantes = contador_estudiantes + 1;
                } else {
                    lector.next(); // Saltar dato erróneo si no es número
                }
            }
            lector.close();

            System.out.println("--------------------------------------------------");

            if (contador_estudiantes > 0) {
                promedio = suma_notas / contador_estudiantes;
                System.out.println("Total de estudiantes evaluados: " + contador_estudiantes);
                System.out.println("El promedio general del salón es: " + promedio);
            } else {
                System.out.println("Error: El archivo no contenía datos válidos de estudiantes.");
            }

        } catch (FileNotFoundException e) {
            System.out.println("Error crítico: No se pudo acceder al archivo.");
        }
    }
}