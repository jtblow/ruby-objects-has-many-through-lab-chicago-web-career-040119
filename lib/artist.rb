class Artist
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
end
def self.all
  @@all
end
def new_song(name, genre)
  Song.new(name, self, genre)
end
def songs
  #placeholder
  Song.all.select do |art|
    art.artist == self
  end
end
def genres
  songs.map do |gen|
    gen.genre
end
end
end
