require 'csv'
require_relative 'controller'


class Item
    attr_accessor :id, :name, :price, :quantity, :brand

    def initialize(id , name , price , quantity , brand)
      @id = id
      @name = name
      @price = price
      @quantity = quantity
       @brand = brand
    end


  
    def save
      items = Item.all
      header = "id,Name,price,quantity,brand"
      file = "./db/items.csv"
  
      File.open(file, "w") do |csv|
        csv << header
        items.each do |item|
          csv << "\n"
          csv << item.id
          csv << ","
          csv << item.name
          csv << ","
          csv << item.price
          csv << ","
          csv << item.quantity
          csv << ","
          csv << item.brand
        end
          csv << "\n"
          csv << @id
          csv << ","
          csv << @name
          csv << ","
          csv << @price
          csv << ","
          csv << @quantity
          csv << ","
          csv << @brand
      end
    
  end



  def self.all
      item_list = []
        
      CSV.foreach(("db/items.csv"), headers: true, col_sep: ",") do |row|
        current_item = Item.new(row[0], row[1], row[2], row[3], row[4])
        item_list << current_item
          
      end
      return item_list
  end

  def self.show(params)
    @items.each do |item|
      if item.id == params
        @item = item
      end
    end
  return @item

  
  end
end