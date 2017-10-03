#ruby_style_guide.rb

# Ruby Style Guide Method
# Include if else elsif statment (branching) and correct style. Paste in discussion forum
# Strings, Numbers, Arrays, Hashes (both types), Iterators, Branching, Methods

def everything_method()
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you #{name}?"
  age = gets.chomp
  puts "How tall are you #{name}? Ex. 6.5 for 6' 6\""
  height = gets.chomp
  puts "Hello #{name}. I see that you are #{age} years old and #{height} feet tall"
  
  def guess_number()
    puts "Pick a number 1 to 10"
    number = gets.chomp
    puts "Hmmm... Was your number #{number}? \"Y\" for Yes and \"N\" for No"
    answer = gets.chomp
  
    if answer == "Y"
      puts "See, that's why computers are smarter than humans!"
    elsif answer == "N"
      puts "Hmmm. I think you are lying to me..."
      guess_number()
    else
      puts "Try to follow instructons please..."
      guess_number()
    end
  end
  guess_number()
end

def start_game()
  rooms = {1=>"Bedroom",2=>"Living Room",3=>"Kitchen",4=>"Garage",5=>"Laundry Room",6=>"Patio",7=>"Basement",8=>"Attic",9=>"Bathroom",10=>"Game Room"}
  puts""
  puts "Okay, let's play a game... I'll generate a random room for you..."
  random_number = (1..10)
  # Let's mix it up and put that into an array form
  array_form = random_number.to_a.shuffle
  puts""
  puts "You have entered the \"#{rooms[array_form[0]]}\" level..."
end

everything_method()
start_game()

