class Album 
  @@album_count = 0 
  def self.count 
    @@album_count 
  end
  
  def initialize 
    @@album_count += 1 
  end 
  
  def release_date=(date)
    @release_date = date
  end
  
  def release_date 
    @release_date
  end
  
end

album = Album.new 
album.release_date = 1991 
puts album.release_date 
Album.new
Album.new
puts Album.count 
