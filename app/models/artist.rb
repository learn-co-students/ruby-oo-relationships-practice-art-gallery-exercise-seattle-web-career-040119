class Artist

  attr_reader :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
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
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    self.all.map do |artist|
      artist.years_experience
    end.sum
  end

  def self.most_prolific
    self.all.max_by do |a|
      a.paintings.length/a.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(self, gallery, price, title)
  end

end
 