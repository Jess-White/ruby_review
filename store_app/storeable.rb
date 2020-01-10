module StoreFront
  module Storeable

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
end
