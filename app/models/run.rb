require_relative 'gym.rb'
require_relative 'lifter.rb'
require_relative 'membership.rb'

giles = Lifter.new("Giles", 200)
thomas = Lifter.new("Thomas", 150)

edge = Gym.new("The Edge")
crunch = Gym.new("Crunch")
planet_fitness = Gym.new("Planet Fitness")

membership_1 = Membership.new(20,edge,giles)
membership_2 = Membership.new(30,crunch,giles)
membership_3 = Membership.new(30,crunch,thomas)

# p giles.gyms
# p edge
# p membership_1
# giles.new_membership(20, planet_fitness)
# p giles.memberships
 p crunch.combined_lift_total
