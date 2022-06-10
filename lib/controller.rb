require_relative 'items'
require_relative 'view'

class Controller 

    def initialize
    @view = View.new
    end

    def create_item
        params = @view.create_item
        @item = Item.new(params.values[0], params.values[1],
            params.values[2], params.values[3],params.values[4])
        @item.save        
    end


    def index 

    items = Item.all
    items.each do |item|
    puts "  #{item.id}"
    puts " #{item.name}"
    puts " #{item.price}"
    puts "#{item.brand}"
    puts "#{item.quantity}"
        end 
    end

    def show 
        item = @view.show_item
        puts "#{item.id}"
        puts " #{item.name}"
        puts " #{item.price}"
        puts "#{item.brand}"
        puts "#{item.quantity}"

    end
    

end