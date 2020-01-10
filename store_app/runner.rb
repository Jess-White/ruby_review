  require_relative "./food.rb"
  require_relative "./store_item.rb"


  item_1 = StoreFront::StoreItem.new(
                          name: "apple", 
                          color: "green", 
                          price: 2,
                        ) 
  item_2 = StoreFront::StoreItem.new(
                          name: "orange", 
                          color: "orange", 
                          price: 3
                        )
  item_3 = StoreFront::StoreItem.new(
                          name: "grape", 
                          color: "purple", 
                          price: 4
                        )
  item_4 = StoreFront::StoreItem.new(
                          name: "pineapple", 
                          color: "variegated green and brown",
                          price: 8
                        )
  item_5 = StoreFront::Food.new(
                    {name: "milk",
                    color: "white",
                    price: 4},
                    "whenever"
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

food_1 = StoreFront::Food.new({name: "milk", color: "white", price: 5}, "January 13")
p food_1