require_relative "./storeable.rb"
require_relative "./store_item.rb"

module StoreFront
  class Food < StoreItem

    include Storeable

    def initialize(input_options, shelf_life)
      super(input_options)
      @shelf_life = shelf_life
    end 

    def shelf_life
      puts "It's probably fine!"
    end 
  end 
end 