class Artist

	attr_accessor :name, :songs
	@@all = []
	
	def initialize(name)
		@name = name
		@songs = []
		self.save 
	end

	def add_song(song)
		@songs << song
	end
	
	def print_songs
	  songs.each{|song| puts song.name}
	end
	
	def self.find_or_create_by_name(name)
		artist = self.all.find{|a| a.name == name}
		artist ||= self.new(name)
		# artist
	end
		
	def save 
		@@all << self 
	end
	
	def self.all
		@@all
	end

end