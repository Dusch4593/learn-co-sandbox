

class Person 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
end

grace_hopper = Person.new("Grace Hopper")
sandi_metz = Person.new("Sandi Metz") 

puts sandi_metz.name
