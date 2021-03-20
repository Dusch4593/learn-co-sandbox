class User 
  attr_accessor :name, :user_name, :age, :location, :bio
  
  def initialize(attributes)
    attributes.each {|key, value|
      self.send(("#{key}="), value)
    }
  end
  
  def display_info
    puts "      New User!       "
    puts "----------------------"
    puts "#{name}, @#{user_name}"
    puts "Age: #{age}"
    puts "Location: #{location}"
  end
end

twitter_user = {
  name: "Brandon", 
  user_name: "Dusch4593",
  age: 27,
  location: "Pittsburgh, PA"
}

brandon = User.new(twitter_user)
brandon.display_info

new_twitter_user = twitter_user = {
  name: "Brandon", 
  user_name: "Dusch4593",
  location: "Pittsburgh, PA"
}

newest_twitter_user = {
  name: "Kristin",
  user_name: "KCutie239",
  age: 25,
  location: "Pittsburgh, PA",
  bio: "I'm about to graduate from Carnegie Mellon University!"
}

User.new(newest_twitter_user)