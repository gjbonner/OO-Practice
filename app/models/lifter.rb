require 'pry'
class Lifter

  attr_reader :name, :lift_total

  @@all = []
def initialize(name, lift_total)
  @name = name
  @lift_total = lift_total
  @@all << self
end

def self.all
  @@all
end

def memberships
  Membership.all.select do |membership|
    membership.lifter == self
  end
end

def gyms
  memberships.map do |membership|
    membership.gym
  end
end

def self.avg_lift_total
  lift_amt = 0
  avg_lift = 0
  self.all.map do |lifter|
    lift_amt += lifter.lift_total
  end
  avg_lift = (lift_amt / self.all.length)
end

def membership_costs
    total_cost = 0
    self.memberships.each do |membership|
      total_cost += membership.cost
  end
  total_cost
end

def new_membership(cost, gym)
  Membership.new(cost, gym, self)
end

end
