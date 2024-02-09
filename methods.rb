def saludar(nombre,saludo)

    puts "Hola #{nombre} #{saludo}"

end

def suma(num1,num2)
    suma = num1 + num2
    return suma
end
def resta(num1,num2)
    resta = num1 - num2
    return resta
end
def multi(num1,num2)
    multi = num1 * num2
    return multi
end
def divi(num1,num2)
    divi = num1 / num2
    return divi
end
a = 92
b = 88

resultado = suma(a,b)
puts "La suma de #{a} y #{b} es #{resultado}"

resultado = resta(a,b)
puts "La resta de #{a} y #{b} es #{resultado}"


resultado = multi(a,b)
puts "La multi de #{a} y #{b} es #{resultado}"


resultado = divi(a,b)
puts "La division de #{a} y #{b} es #{resultado}"