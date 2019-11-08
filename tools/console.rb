require_relative '../config/environment.rb'


a1=Artist.new("Van Gogh", 10)
a2=Artist.new("Monet", 11)
a3=Artist.new("Picasso", 12)

g1=Gallery.new("Al's", "Atlanta")
g2=Gallery.new("Bob's", "Boston")
g3=Gallery.new("Cal's", "Colombus")

Painting.new(a1, g1, 500, "Irises")
Painting.new(a2, g2, 600, "Rouen Cathedral")
Painting.new(a3, g3, 700, "Square Crap")
Painting.new(a1, g2, 800, "Starry Night on the Rhone")
Painting.new(a2, g3, 900, "Water Lillies")
Painting.new(a3, g1, 100, "Picasso was a hack")

Pry.start
# a has_many paintings
#   p has_one gallery
#   p has_one artist
#  g has_many paintings
# An artist can, of course, have many paintings. Paintings can only be in one gallery at a time, and only have one artist. Galleries can have many paintings.

puts "Bob Ross rules."
