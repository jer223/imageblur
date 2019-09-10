class Car
  attr_reader :make, :model, :color, :year
  def initialize(make, model, color, year)
    @make  = make
    @model = model
    @color = color
    @year = year
  end   
  def honk 
    if @model == (:civic)
     p "beep beep"
    end 
  end 
end   

car = Car.new(:honda, :civic, :black, 2007)
 
p car.make
p car.model
p car.color
p car.year
car.honk