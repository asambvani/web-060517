require 'pry'
class Artist

attr_accessor :name

@@all = []
@songs = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)

    @songs << song
    return @songs

  end


  def self.all
    @@all
  end

  def self.reset

    @@all.clear

  end

  def self.find_by_name(name)

    return self.all.select do |artist|
      artist.name == name
    end

  end

  def songs

    return Song.all.select do |song|
      song.artist == self
    end

  end

end
