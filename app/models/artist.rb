class Artist

  attr_reader :name, :years_active
  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    all_galleries = []
    paintings.map do |painting|
      all_galleries << painting.gallery
    end
    all_galleries
  end

  def cities
    cities = []
    galleries.map do |gallery|
      cities << gallery.city
    end
    cities.uniq
  end

  def self.avg_years
    total_years = 0
    avg_years = 0
    @@all.each do |artist|
      total_years += artist.years_active
    end
    avg_years = (total_years / @@all.count)
    avg_years
  end

  

end
