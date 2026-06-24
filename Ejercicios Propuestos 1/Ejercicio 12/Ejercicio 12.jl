romanos = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", 
           "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX", "XX"]

print("Ingrese un numero del 1 al 20: ")
n = parse(Int, readline())

if n >= 1 && n <= 20
    println(n, " en romano es: ", romanos[n])
else
    println("Numero fuera de rango.")
end
