class Genre
  @@all = []

  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, artist)
    song = Song.new(song_name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists

  end
end
