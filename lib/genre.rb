class Genre
  attr_accessor :songs, :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect {|current_song| current_song.artist}
  end

end
