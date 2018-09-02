class Artist
  @@all = []

  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, genre)
    song.artist << self
  end

  def songs

  end

  def genres

  end
    
    
end