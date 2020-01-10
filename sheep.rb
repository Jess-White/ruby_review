class Sheep
  @@count = 0

  def initialize 
    @@count += 1
    @id = @@count
  end 

  def inspect
    "Sheep Num: #{ @id }"
  end 

  def self.total_count
    @@count
  end
end

class BlackSheep < Sheep
  @@count = 0

  def initialize 
    super 
    @@count -= 1
  end 
end 

p Sheep.new
p Sheep.new
p Sheep.new

p Sheep.total_count
p BlackSheep.new