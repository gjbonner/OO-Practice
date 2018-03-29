class Gym

  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def memberships

    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map { |membership| membership.lifter }
  end

  def lifter_names

    lifters.map { |lifter| lifter.name }
  end

  def lift_total_for_gym
    total = 0
    lifters.each {|lifter| total += lifter.lift_total}
    total
  end



    # Get a list of all gyms

    # Get a list of all memberships at a specific gym

    # Get a list of all the lifters that have a membership to a specific gym

    # Get a list of the names of all lifters that have a membership to that gym

    # Get the combined lift_total of every lifter has a membership to that gym


end
