USERNAME = "examplelolz"
PASSWORD = "Surfing"
PASSWORD_VAULT = {aws: {user_name: "lol", password: "doggo" }}

def welcome_message
  puts "Welcome to None Shall Pass - a password manager"
end

def prompt_user_for_username
  puts "Please sign in to continue"
  print  "Enter username: "
  gets.chomp
end

# user_name = gets.chomp
def verify_user_name(user_name)
  if user_name != USERNAME #some condition is true
    puts "Invalid email"
    exit    # execute some other chonk
  end
end

def prompt_user_for_password
  print "Enter password: "
  gets.chomp
end

def verify_user_password(user_password)
  if user_password != PASSWORD
    puts "Invalid password"
    exit
  end
end

def greet_user(user_name)
  puts "Hello, #{user_name}"
  puts "What would you like to do?"
end

def menu_options
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing service credentials"
  puts "3. Exit"
end

def get_user_menu_seletion
   gets.chomp
end

def handle_user_selection(user_selection) 
  case user_selection
  when "1"
   new_service = set_new_service_name
   set_username_for_service(new_service)
   set_password_for(new_service)
  when "2"
    requested_service_name = retrieve_service_name
    credentials = retrieve_service_credentials_for(requested_service_name)
    display_service_credentials(requested_service_name, credentials)
  else 
    exit_program
  end
end

def set_new_service_name
  print "Enter the name of the service: "
      new_service = gets.chomp
      PASSWORD_VAULT[new_service.to_sym] = {}
      new_service
end

def set_username_for_service(service)
  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[service.to_sym][:username] = new_service_username
end

def set_password_for(service)
  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[service.to_sym][:password] = new_service_password
end

def retrieve_service_name
  print "Please enter the name of service you wish to access credentials for: "
  gets.chomp
end

def retrieve_service_credentials_for(service_name)
  PASSWORD_VAULT[service_name.to_sym]
end

def display_service_credentials(service_name, credentials)
  puts "Here and the credentials for #{service_name}"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
 end
end  
  
  
def exit_program
    puts "Exiting the program. Goodbye."
    exit
end



welcome_message
user_name = prompt_user_for_username
verify_user_name(user_name)
user_password = prompt_user_for_password
verify_user_password(user_password)
greet_user(user_name)

loop do 
  menu_options
  user_selection = get_user_menu_seletion
  handle_user_selection(user_selection)
end
