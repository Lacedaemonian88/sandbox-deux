USERNAME = "examplelolz"
PASSWORD = "Surfing"

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

  else
    puts
    puts
    puts
end
