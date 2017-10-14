class Genre
  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song song
    @songs << song
  end

  def artists
    @songs.map {|song| song.artist}
    #calls on the songs instance method of artist to change the array
    #of songs to that artist
  end
end
