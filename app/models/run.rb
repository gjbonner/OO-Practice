require_relative 'car_owner.rb'
require_relative 'car.rb'
require_relative 'mechanic.rb'

thomas = CarOwner.new("Thomas")
henry = CarOwner.new("Henry")

f430 = Car.new("Ferrari", "f430", "Exotic", thomas)
camaro = Car.new("Chevrolet", "Carmaro", "Antique", henry)

giles = Mechanic.new("Giles", "Exotic")
dick = Mechanic.new("Dick", "Antique")

 p f430.qualified_mechanics
 p thomas.car_classes
 p dick.people_served
