

class Concert 
  attr_accessor :venue, :name, :date, :location
  @@all = []
  
  def initialize
    self
    @@all << self
  end
  
  def over? 
    Time.now - self.date <= 0 # self is a particular Concert
  end 
  
  def self.destroy_all! 
    self.all.clear 
  end
  
  def self.find_by_location(location) # self is Concert
    self.all.detect{|concert|
      concert.location == location
    }
  end
  
  def self.all 
    @@all
  end
end


kanye_listening_party = Concert.new 
kanye_listening_party.venue = "MSG"
puts kanye_listening_party.venue
puts Concert.all 