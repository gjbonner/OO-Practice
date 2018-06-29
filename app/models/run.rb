require 'pry'

require_relative 'artist.rb'
require_relative 'gallery.rb'
require_relative 'painting.rb'

giles = Artist.new("Giles", 3)
dick = Artist.new("Dick", 4)

moma = Gallery.new("Modern Museum Of Art", "NYC")
louvre = Gallery.new("Louvre", "Paris")

painting1 = Painting.new("Rothco 10", "Abstract", giles, moma)
painting2 = Painting.new("Dicks paining", "Finger Painting", dick, moma)
painting3 = Painting.new("Elbins painting", "Abstract", giles, louvre)

binding.pry
