# Homework: Section 2 - Lecture 17 @ 17:27
# By the Tutorial Doctor
# Homework. anaylyzer.rb. Get input form user that says what is your first name and then say what is last name. 
# Get user to input last name and then say welcome first name last name to the analyzer. Then 
# output length of first name and last name. Welcome user, your first name is x characters and your last name is y characters (.length). 
# Display what is the reverse of the user's first and last name. (reverse)
# paste code in discussion area.

#puts "What is your first name?"
#first_name = gets.chomp
#puts "What is your last name?"
#last_name = gets.chomp

#puts "Welcome #{first_name} #{last_name}, to the ANALYZER." + " Your first name is #{first_name.length} characters long, and your last name is #{last_name.length} characters long."
#puts "Your first name backwards is " + first_name.reverse + " and your last name backwards is " + last_name.reverse + ". COOL EH??!!"

# NUMBERS
#puts "Please enter your first number"
#num1 = gets.chomp
#puts "Please enter your second number"
#num2 = gets.chomp

# Methods & Branching
def multiply(num1,num2)
  num1.to_f * num2.to_f
  # In ruby the return is implied
end

def divide(num1,num2)
  num1.to_f / num2.to_f
  # In ruby the return is implied
end

def subtract(num1,num2)
  num2.to_f - num1.to_f
  # In ruby the return is implied
end

def mod(num1,num2)
  num1.to_f % num2.to_f
  # In ruby the return is implied
end

puts "What do you want to do? 1) Multiply 2) Divide 3) Substract 4) Find remainder"
prompt = gets.chomp

puts "Please enter your first number"
num1 = gets.chomp
puts "Please enter your second number"
num2 = gets.chomp

if prompt == "1"
  puts "You have chosen to multiply #{num1} with #{num2}"
  result = multiply(num1,num2)
elsif prompt=="2"
  puts "You have chosen to divide #{num1} with #{num2}"
  result = divide(num1,num2)
elsif prompt =="3"
  puts "You have chosen to subtract #{num1} with #{num2}"
  result = subtract(num1,num2)
elsif prompt == "4"
  puts "You have chosen to find remainder #{num1} with #{num2}"
  result = mod(num1,num2)
else
end

puts "The result is #{result}"


#puts "The first number mutiplied by the second number is: #{multiply(num1,num2)}"
#Homework: Numbers
# Divided, Subtracted, Mod of the
#puts "The first number divided by the second number is: #{num1.to_i / num2.to_i}"
#puts "The first number subtracted from the second number is: #{num1.to_i - num2.to_i}"
#puts "The first number mod the second number is: #{num1.to_i % num2.to_i}"



