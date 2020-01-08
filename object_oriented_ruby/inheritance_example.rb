class Transportation
  def initialize
    @speed = 0
    @direction = 'north'
  end

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

class Car < Transportation
  
  def initialize(input_options, fuel, make, model)
    super()
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

class Bike < Transportation
  def initialize(input_options)
    super()
    @type = input_options[:type]
    @weight = input_options[:weight]
    @color = input_options[:color]
  end 
  
  def ring_bell
    puts "Ring ring!"
  end
end

bicycle_1 = Bike.new({type: "Schwinn", weight: 200, color: "red"})
bicycle_1.ring_bell
car_1 = Car.new
car_1.honk_horn
car_1.accelerate
p car_1
car_1.decelerate
p car_1


class Van < Transportation
  def initialize(input_make, input_model, input_year, input_fuel)
    super()
    @make = input_make
    @model = input_model
    @year = input_year
    @fuel = input_fuel
  end 

  def honk_horn
    puts "HONK"
  end 
end 


