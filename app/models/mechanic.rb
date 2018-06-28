class Mechanic

attr_reader :name, :specialty

@@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select do |car|
    car.classification == self.specialty
  end
end


def owners
  cars.map do |car|
    car.owner
  end
end

def people_served
  owners.map do |owner|
    owner.name
  end
end


end
