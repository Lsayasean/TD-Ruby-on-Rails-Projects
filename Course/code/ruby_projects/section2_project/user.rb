require 'json'

class User
  #Access the attributes email, name and permissions
  attr_accessor = :email, :name, :permissions
  
  #Initialize the object with arguments
  def initialize(*args) # * is a splat operator
    #instance variable for email set to argument 0
    @email = args[0]
    @name = args[1]
    @permissions = User.permissions_from_template
  end
  
  #Class Method that gets permissions from template file
  def self.permissions_from_template
    #Read and store the file to a variable
    file = File.read "user_permissions_template.json"
    #Create a JSON object from the file with nicely formatted output
    JSON.load(file, nil, symbolize_names: true)
  end
  
  #Instance Method that saves/appends the JSON object to a new file named user.json
  def save
    # Convert hash to JSON
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json
    #Open the file and append the JSON to the file
    open('users.json', 'a') do |file|
      file.puts self_json
    end
  end
end