class Gym

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters_names
    memberships.map do |membership|
      membership.lifter.name
    end
  end

  def combined_lift_total
    combined_total = 0
    memberships.map do |membership|
    combined_total += membership.lifter.lift_total
    end
    combined_total
  end

end
