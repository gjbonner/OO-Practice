class Gallery

  attr_reader :name, :city

  @@all = []

def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

def self.all
  @@all
end

def self.cities
  cities = []
  @@all.each do |gallery|
    cities << gallery.city
  end
  cities.uniq
end

def paintings
  Painting.all.select do |painting|
    painting.gallery == self
  end
end

def artists
  paintings.map do |painting|
    painting.artist
  end
end

def artist_names
  artists.map do |artist|
    artist.name
  end
end

def combined_experience
  combined_exp = 0
  artists.map do |artist|
  combined_exp += artist.years_active
  end
  combined_exp
end

end
