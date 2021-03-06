class Song

  attr_accessor :name, :artist 
  @@all = []

  def initialize(name)
	  @name = name
	  @@all << self
  end

  def self.new_by_filename(file_name)
	  artist_name = file_name.split(" - ")[0]
	  song_name = file_name.split(" - ")[1]
	  song = Song.new(song_name)
	  song.artist = Artist.find_or_create_by_name(artist_name)
	  song.artist.add_song(song)
	  song
  end

end