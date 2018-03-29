class Lifter

  ALL = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    ALL << self
  end

  def self.all
    ALL
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map { |membership| membership.gym  }
  end

  def self.average_lift
    total = 0
    self.all.each {|lifter| total += lifter.lift_total}
    total / ALL.length
  end

  def sign_up(cost, gym)
    Membership.new(self, gym, cost)
  end

  def total_cost
    total = 0
    memberships.each { |membership| total += membership.cost }
  end



end



  # Get a list of all lifters

  # Get a list of all the memberships that a specific lifter has

  # Get a list of all the gyms that a specific lifter has memberships to

  # Get the average lift total of all lifters

  # Get the total cost of a specific lifter's gym memberships

  # Sign a specific user up for a new gym
