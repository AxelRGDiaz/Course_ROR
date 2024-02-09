num_array = [1, 2, 3, 4, 5]

num_array.each do |num|
    puts num
end

contacts_hash = {Aldo: 12345, Pedro: 678, Ana: 55555}

contacts_hash.each do |key, value|
    puts "La llave es #{key} y el valor es #{value}"
end

contacts_hash.each_key do |key|
    puts "La llave es #{key} "
end

contacts_hash.each_value do |value|
    puts "El valor es #{value}"
end

"Axel".each_char do |chr|
    puts chr
end

10.times do |time|
    puts "Es es el interador times #{time}"
end