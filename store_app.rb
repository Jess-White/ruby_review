

# Exercise:
# Make a new folder in ruby_review called store_app
# Open the store_item.rb file you created from the previous lesson.
# Create a new module in your store item.
# Create separate files for each of your classes and modules inside the folder store_app
# Create a separate main.rb file to demonstrate how each class and module work.
# Bonus: Read about the differences between load, require, and require_relative: http://rubylearning.com/satishtalim/including_other_files_in_ruby.html (edited) 
# rubylearning.comrubylearning.com
# Including Other Files in Ruby: Ruby Study Notes - Best Ruby Guide, Ruby Tutorial
# Ruby Study Notes - Best Ruby Guide, Ruby Tutorial

# store_inventory = [{fruit_1: "apple", color: "green", price: 2}, {fruit_2: "orange", color: "orange", price: 3}, {fruit_3: "grape", color: "purple", price: 4}, {:fruit_4 => "pineapple", :color => "variegated green and brown", :price => 8}]

# puts "#The color of #{store_inventory[0][:fruit_1]} is #{store_inventory[0][:color]} and the price is #{store_inventory[0][:price]}."

class StoreItem
  attr_reader :name, :color, :price
  attr_writer :color, :price

   def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
  end 

  def print_info
    puts "#{ @item } is typically #{ @color } and costs #{ @price }." 
  end 

  def surge_pricing
    @price = @price * 2
  end

  def add_tax
    @price = @price * 1.07
  end 

  def color=(new_color)
    @color = new_color
  end 

end 

class Food < StoreItem
  def initialize(input_options, shelf_life)
    super(input_options)
    @shelf_life = shelf_life
  end 

  def shelf_life
    puts "It's probably fine!"
  end 
end 

  item_1 = StoreItem.new(
                          name: "apple", 
                          color: "green", 
                          price: 2,
                        ) 
  item_2 = StoreItem.new(
                          name: "orange", 
                          color: "orange", 
                          price: 3
                        )
  item_3 = StoreItem.new(
                          name: "grape", 
                          color: "purple", 
                          price: 4
                        )
  item_4 = StoreItem.new(
                          name: "pineapple", 
                          color: "variegated green and brown",
                          price: 8
                        )
#   item_array = [item_1, item_2, item_3, item_4]
#   index = 0
#   item_array.each do |item| 
#     print item.color + " " + item.name
#     if index < item_array.length - 2
#       print ", "
#     elsif index == item_array.length - 2 
#       print " & "
#     end 
#     index += 1
#   end
# item_array

food_1 = Food.new({name: "milk", color: "white", price: 5}, "January 13")
p food_1

