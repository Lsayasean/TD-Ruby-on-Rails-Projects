# lecture 36

module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User #CamelCase
  include Destructable
  attr_accessor :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  def self.identify_yourself
    puts "I'm a class method"
  end
  
  def run
    puts "Hey, I'm running!"
  end
end

# Initialize an new user object
user = User.new("Rapha","raphael@example.com")
user1 = User.new("John","john@example.com")
user2 = User.new("Kevin","kevin@example.com")
#user.run
#user1.run
#user2.run
#puts user
#puts user1
#puts user2

puts "My user's name is #{user.name} and his email is #{user.email}"
user.name = "John"
user.email = "john@example.com"

user = User.new("John","johnyapppleseed@example.com")

user.destroy('myname')
User.identify_yourself