respuesta = ""

until  respuesta == "n" || respuesta == "N"
    puts "Estoy jugando"
    print "Moriste, quieres seguir jugando? s/n  "
    respuesta = gets.chomp
end