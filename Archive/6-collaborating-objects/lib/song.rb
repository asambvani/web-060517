class Song

@@all = []

attr_accessor :name

  def initialize (name)

    @name = name
    @@all << self

  end

  def self.all

    @@all

  end

  def artist=(artist)

    @artist = artist

  end

  def artist

    @artist

  end

end
