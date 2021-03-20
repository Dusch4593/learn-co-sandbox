class Song 
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end
  
  def self.all # reader method 
    @@all # class var is exposed 
  end 
  
  
end 

