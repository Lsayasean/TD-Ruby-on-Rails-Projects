require 'pp'
require_relative 'user' 

# pp styles output better.
# relative to this file, in this folder. 

user = User.new "tutorialdoctor@example.com", "Tutorial Doctor"
pp user
user.save

