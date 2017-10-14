class Song
  attr_accessor :artist, :genre, :name


  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
    #calls on the genre class's method to now add that song to the genre
    #array of songs
  end
end
