class Song 
  attr_accessor :artist, :name, :genre 
  
  @@all = []
  
  def initialize(name, genre)
    @name = name 
    @genre = genre
    save 
  end 
  
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def artist_name 
    self.artist.name
  end
end

class Artist 
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end
  
  def songs 
    Song.all.select{|song|
      song.artist == self
    }
  end
end

nas = Artist.new("Nas")
rick_astley = Artist.new("Rick Astley")

the_world_is_yours = Song.new("The World Is Yours", "hip-hop")
never_gonna_give_you_up = Song.new("Never Gonna Give You Up", "pop")

the_world_is_yours.artist = nas 
never_gonna_give_you_up.artist = rick_astley

Song.all.collect{|song|
  puts "\"#{song.name}\" (#{song.genre}) by #{song.artist.name}"
} 

puts nas.songs 