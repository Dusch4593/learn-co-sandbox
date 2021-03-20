class Person 
  attr_accessor :name
  @@all = [] 
  
  def self.all 
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.print_all
    self.all.each{|person|
      puts "#{person.name}"
    }
  end
  
  def normalize_name 
    self.name.split(" ").collect{|w| w.capitalize}.join(" ")
  end
  
  def self.normalize_names
    self.all.each{|person|
      person.name = person.normalize_name
    }
  end
  
  def self.destroy_all 
    self.all.clear
  end
end

Person.new("ada lovelace")
Person.new("grace hopper")
Person.new("brandon dusch")


Person.normalize_names

Person.destroy_all 
puts Person.class_variable_get(:@@all)

