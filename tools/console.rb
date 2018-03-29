require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a =  Lifter.new("Gary", 1000)
b = Lifter.new("Annette", 1200)
c =  Lifter.new("Toby", 100)

x = Gym.new("Planet Fitness")
y = Gym.new("New York Sports Club")
z = Gym.new("Rise by We")

binding.pry
