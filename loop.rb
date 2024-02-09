loop do
    print "Quieres continuar jugando? S/N "
    respuesta = gets.chomp
    if respuesta != "S" && respuesta != "s"
        break
    end
    puts "Sigamos jugando"
end 