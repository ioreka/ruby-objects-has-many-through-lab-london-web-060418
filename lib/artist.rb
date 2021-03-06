require 'pry'
class Artist
  attr_accessor :name
  attr_reader :genre

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
   Song.all.select do |song|
     song.artist == self
   end
  end

  def genres
    songs.map do |item|
        item.genre
      # binding.pry
    end

  end


end
