class Artist
  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    # song is an intsance of the Song class and
    #.artist is a method on that class. Just setting that intstance of song
    # equal to the attribute of that artist which is the artist in the
    #artist instance. this only works because artist is a an rw in the song class
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.map{|song| song.genre}
    # calls on the songs instance method of artist to change the array
    #of songs to that song's genre
  end
end
