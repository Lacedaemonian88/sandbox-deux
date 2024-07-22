USERNAME = "examplelolz"
PASSWORD = "Surfing"
PASSWORD_VAULT = {aws: {user_name: "lol", password: "doggo" }}

puts "Welcome to None Shall Pass - a password manager"
puts "Please sign in to continue"
print  "Enter email: "

user_name = gets.chomp

if user_name == USERNAME #some condition is true
    print "Enter password: " #executre some code
    user_password = gets.chomp  
else 
   puts "Invalid email"
   exit    # execute some other chonk
end



unless user_password != PASSWORD
  puts "Hello, #{user_name}"
  puts "What would you like to do?"
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing service credentials"
  puts "3. Exit"
  user_selection = gets.chomp

  else
    puts "Invalid"
    exit
end

case user_selection
when "1"
  print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service] = {}

  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[new_service]["username"] = new_service_username

  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[new_service]["password"] = new_service_password
  p PASSWORD_VAULT
when "2"
  print "Please enter the name of service you wish to access credentials for: "
  requested_service_name = gets.chomp
  credentials = PASSWORD_VAULT[requested_service_name.to_sym]
  
  puts "Here and the credentials for #{requested_service_name}"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
else 
  puts "Exiting the program. Goodbye."
  exit
end
