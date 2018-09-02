class Artist
  @@all = []

  @songs = []

  attr_accessor :songs
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
    @songs << song
    song.artist << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres

  end


end
