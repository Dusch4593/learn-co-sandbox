class Dog 
  attr_accessor :name, :owner 
  
  def initialize(name) 
    @name = name 
  end
  
  def adopted(owner_name)
    self.owner = owner_name
  end
end

fido = Dog.new("Fido")

puts fido.name

fido.owner = "Brandon"

puts fido.owner
fido.adopted("Kristin")

puts fido.owner