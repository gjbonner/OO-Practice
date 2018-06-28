class CarOwner

  attr_reader :name, :owner

  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def car_classes
    self.cars.map do |car|
      car.classification
    end
  end

  def mechanics
    Mechanic.all.select do |mechanic|
      # binding.pry
      car_classes.include?(mechanic.specialty)
    end
  end



end
