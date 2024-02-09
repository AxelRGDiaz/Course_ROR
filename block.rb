def suma(num1,num2, &block)
    resultado = num1 + num2
    if block_given?
        block.call resultado
    else
        puts "El resultado cdesplegado en el metodo es #{resultado}"
    end
end

"hello".each_char {|c| print c, ' '}