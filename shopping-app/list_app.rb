require "./list.rb"
require "./item.rb"

class ListApp
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        puts "Bienvenvido a nuestra Lista de compras"
        loop do
            puts ""
            puts "a - Agregar un articulo"
            puts "r - Remover un articulo"
            puts "v - Mostrar todos los articulos"
            puts "m - Marcar un articulo"
            puts "b - Borrar todos los articulos"
            puts "s - Salir de la aplicacion \n"
            input = gets.chomp
            case input
            when 'a'
                puts "\n¿Qué deseas agregar?"
                item = gets.chomp
                @list.add_item(item)
                40.times { print "*" }
                puts "\n#{item} ha sido agregado a tu lista"
                40.times { print "*" }
                puts ""
            when 'r'
                puts "\n# de articulo que desea remover"
                index = gets.chomp
                item = @list.remove_item(index.to_i)
                40.times { print "*" }
                puts "\n#{item.text} ha sido removido"
                40.times { print "*" }
                puts ""
            when 'v'
                puts ""
                @list.show_all
            when 'm'
                puts ""
                puts "# de articulo que desea marcar"
                index = gets.chomp
                item = @list.check_item(index.to_i)
                40.times { print "*" }
                puts "\n#{item.text} ha sido marcado"
                40.times { print "*" }
                puts ""
            when 'b'
                puts ""
                puts "¿Deseas remover todos los articulos? s/n"
                input = gets.chomp
                if input == 's'
                    @list.remove_all
                else
                    "Operación cancelada"
                end
            when 's'
                break
            else
                puts "Operacion no reconocida"
            end
        end
        puts "\nGracias por utilizar nuestra aplicacion "
    end
end


list_app = ListApp.new
list_app.run