require_relative 'controller'

class View 


def initialize
end

def create_item
    id = Item.all.length + 1
        puts " Quel est le nom de ton item ? "
        print "👉"
    name = gets.chomp
        puts "Combien coute l'item ?"
        print "👉"
    price = gets.chomp
        puts "Le nombre d' item ?"
        print "👉"
    quantity = gets.chomp
        puts " La marque de ton item ?"
        print "👉"
    brand = gets.chomp

    params = {
            "id":  id,
            "name": name,
            "price": price,
            "quantity": quantity,
            "brand": brand
    }
            puts params
        return params


end    

def show_item
    puts " Quel item veux tu ? "
    choise_item = Item.all
    id = gets.chomp.to_i
    return choise_item[id - 1]
end


end