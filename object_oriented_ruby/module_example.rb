module Transportable

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def decelerate
    @speed -= 10
  end 

  def emergency_brake
    @speed == 0
  end 

  def turn(new_direction)
    @direction = new_direction
  end
end 

class Car 
  include Transportable 

  def initialize(input_options, fuel, make, model)
    @fuel = fuel
    @make = make
    @model = model
  end 

  def honk_horn
    puts "Beeeeeeep!"
  end

  def fuel
    "What are cars?"
  end 

  def make
    "Seriously, what are cars?"
  end 

  def model
    "I can't drive."
  end 
end

class Bike 
  attr_reader :color
  
  include Transportable

  def initialize(input_options)
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end 
  
  def ring_bell
    puts "Ring ring!"
  end
end

class Van 
  include Transportable
  def initialize(input_make, input_model, input_year, input_fuel)
    @make = input_make
    @model = input_model
    @year = input_year
    @fuel = input_fuel
  end 

  def honk_horn
    puts "HONK"
  end 
end 

bicycle_1 = Bike.new({type: "Schwinn", weight: 200, color: "red"})
bicycle_1.ring_bell
p bicycle_1.color

