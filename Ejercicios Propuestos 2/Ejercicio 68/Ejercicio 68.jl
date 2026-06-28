print("Introduce el número de términos (n) para aproximar e: ")
n = parse(Int, readline())

# Variables
e = 1.0        # El primer término (1/ 0! = 1)
fact = 1.0     # Guarda el valor del factorial acumuladonse 

for i in 1:(n - 1)
    global fact = fact * i
    global e = e + (1 / fact)
end

println("El valor aproximado de e con ", n, " términos es: ", e)