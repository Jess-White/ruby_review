require_relative "./storeable.rb"

module StoreFront
  class StoreItem

    include Storeable

    attr_reader :name, :color, :price
    attr_writer :color, :price

     def initialize(input_options)
      @name = input_options[:name]
      @color = input_options[:color]
      @price = input_options[:price]
    end 
  end 
end 



