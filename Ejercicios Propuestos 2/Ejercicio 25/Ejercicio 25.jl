println("Ingrese la cantidad de numeros a evaluar (M):")
M = parse(Int, readline())

if M <= 0
    println("Debe ingresar una cantidad mayor a 0.")
else
    suma_inversas = 0.0
    producto = 1.0
    
    # Creamos la variable x fuera del bucle para poder usarla abajo igual que en PSeInt
    x = 0 
    
    for i in 1:M
        global suma_inversas, producto, x
        
        println("Ingrese el numero ", i, ":")
        x = parse(Int, readline())
        
        # si en caso nos diga que pasa si pongo cero o negativos se escribe que
        if x <= 0
            println("Error: Solo se admiten numeros enteros POSITIVOS (mayores a 0).")
            break # En Julia 'break' reemplaza de forma correcta a "i <- M + 1" para salir del bucle
        else
            suma_inversas = suma_inversas + (1.0 / x)
            producto = producto * x
        end
    end
    
    # vemos si no hay errores
    if x > 0
        armonica = M / suma_inversas
        geometrica = producto ^ (1.0 / M)
        
        println("Media Armonica: ", armonica)
        println("Media Geometrica: ", geometrica)
        println("Diferencia (Valor Absoluto): ", abs(armonica - geometrica))
    end
end
