# HOMEWORK: Area Code Dictionary

#1. Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and the area code would be the value.
#2. Get input from user on city name (hint: use gets.chomp method)
#3. Display the city names to the user wich are available in the dictionary
#4. Display area code based on user's city choice
#5. Loop- keep the program running and prompt the user for new city names to lookup until user chooses NO.
#6. Method to look up area code, this will take in a hash of the dictionary and the city name and will output area code.
#7. Method to display just city names.

# USE COMMENTS. POST IMAGE
# MESSAGE FOR INVALID CODES
# Method to display city names
# Method to get area code and dial_book and the city name

dial_book = {
  "apoka" => "32703",
  "christmas" => "32709",
  "maitland" => "32751",
  "winterpark" => "32789",
  "zellwood" => "32798",
  "orlando" => "32801",
  "gotha" => "34734",
  "killarney" => "34740",
  "oakland" => "34760",
  "ocoee" => "34761",
}

# List the book names
def list_names(book)
  puts "Okay. Here are a list of the cities:"
  # For each key-value pair in the book, print the key
  book.each {|k,v| puts k}
end

# Prompt user for city and print the code
def get_code(book)
  puts "Which city do you want the zip code for:"
  # Promot the user for the city name
  city_name = gets.chomp
  if book.include?(city_name)
    puts "Valid entry"
  else
    puts "Invalid entry. Try again"
    get_code(book)
  end

  # Print the area code
  puts "The zip for #{city_name} is #{book[city_name]}"
end

loop do
  puts "Do you want to lookup a city name? (Y/N)"
  answer = gets.chomp.capitalize
  
  if answer != "Y"
    puts "Okay. Goodbye!"
    break
  end
  
  puts""
  list_names(dial_book)
  puts""
  get_code(dial_book)
  puts""
end
