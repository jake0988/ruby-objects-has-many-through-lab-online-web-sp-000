
require 'pry'
class Artist
attr_accessor :name, :genre

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
      a = Song.all.select.each do |song|
        song.artist == self
      end

  end

  def genres
    arr = []
       Song.all.collect do |song|
       song.genre == self
       arr << song.genre
      end
      arr
  end
end
