class Song 
  attr_accessor :title, :artist  
  
  def initialize(title)
    @title = title
  end
  
  def self.new_by_filename(filename) 
    song = Song.new 
    song.title = filename.split(" - ")[1]
    song
  end
  
  def artist_name=(name)
    if(self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name 
    end
  end
end

class MP3Importer 
  def import(list_of_filenames) 
    list_of_filenames.each{|filename|
      Song.new_by_filename(filename)
    }
  end
end

class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
end

hotline_bling = Song.new("Hotline Bling")

hotline_bling.artist_name = "Drake"
puts hotline_bling.artist.name