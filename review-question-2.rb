# Finish the implementation of the Car class so it has the functionality described below
require 'pry'

class Car

  attr_accessor :make, :model

  @@all = []

  def initialize(hash)
    hash.each do |key, value|
      if key == :make
        @make = value
      elsif key == :model
        @model = value
      end
    end
    @@all << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end

binding.pry

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

#BONUS:

Car.new({make: "volvo", model: "lightening"})

car.make
#=> "volvo"
car.model
#=> "ligthening"
