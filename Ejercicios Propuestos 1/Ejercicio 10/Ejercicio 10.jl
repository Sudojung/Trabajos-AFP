binario = ""
esBinario = false

while !esBinario
    print("Ingrese un número binario (solo 0 y 1): ")
    global binario = readline()
    global esBinario = true
    
    for j in 1:length(binario)
        caracter = binario[j:j]
        if caracter != "0" && caracter != "1"
            global esBinario = false
            break
        end
    end
    
    if !esBinario
        println("Error: El texto introducido no es un numero binario.")
    end
end

while length(binario) % 4 != 0
    global binario = "0" * binario
end

hex = ""
for i in 1:4:length(binario)
    bloque = binario[i:i+3]
    digitoHex = if bloque == "0000" "0"
    elseif bloque == "0001" "1"
    elseif bloque == "0010" "2"
    elseif bloque == "0011" "3"
    elseif bloque == "0100" "4"
    elseif bloque == "0101" "5"
    elseif bloque == "0110" "6"
    elseif bloque == "0111" "7"
    elseif bloque == "1000" "8"
    elseif bloque == "1001" "9"
    elseif bloque == "1010" "A"
    elseif bloque == "1011" "B"
    elseif bloque == "1100" "C"
    elseif bloque == "1101" "D"
    elseif bloque == "1110" "E"
    elseif bloque == "1111" "F"
    end
    global hex *= digitoHex
end

println("El número en Hexadecimal (base 16) es: ", hex)
