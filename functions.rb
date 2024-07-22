# Methods

def say_hello(turtle)
  puts "Hello, #{turtle}"
end
say_hello("Tempest")


def say(greeting = "Hello", name)
  puts "#{greeting}, #{name}"
end
say("Hello", "Turtle")


# key argument 9to ensure there isn't mix ups

def say (greeting:, name:)
  puts "#{greeting}, #{name}"
end

say( name:"tempest", greeting: "Good morning")
say( greeting: "Good morning", name:"Tempest")


def say (greeting: "Hello", name:)
  puts "#{greeting}, #{name}"
end

say( name:"tempest", greeting: "Good morning")
say( greeting: "Good morning", name:"Tempest")


def some_method
  2 + 2
  puts "Hello"
  5 * 5
end

result = some_method # will always be the last line returned

def check_input(num)
  return 0 if num.nil?  # modifier form -- if/ unless --- no else statement involved
 num
end 
check_input(7)
check_input(nil)
