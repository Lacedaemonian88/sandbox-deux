class Turtle
  attr_accessor :name, :turt, :wisdom

  def initialize
    @name = name
    @wisdom = wisdom
    @turt = turt
  end

def welcome
  @wisdom = []
  puts "\n"
  puts "You're on the back of the World Turtle, surrounded by much smaller turtles."
  puts 'They ask you for your name: '
  self.name = gets.chomp.capitalize
  puts "\n"
  puts "Well #{name.to_s}... you have no idea why you're here, but these turtles want to play!"
  adventure
end

def adventure
  loop do
    puts "\n"
    puts 'What do you do?'
    puts '1. Turtle race'
    puts '2. Stack'
    puts '3. Battle'
    puts '4. Speak to the World Turtle'
    puts '5. Leave adventure'

    choice = gets.chomp.to_i
    case choice
    when 1
      race
    when 2
      stack
    when 3
      combat
    when 4
      wisdom
    when 5
      puts 'The World Turtle looks at you and nods and says,'
      puts '"Take care #{name.to_s}. Always remember...#{wisdom}..."'
      break
    else
      puts 'These turtles looks confused. Please choose a valid option.'
    end
  end
end
#turtle race
def race
  puts "Some turtles want to race. You only have two hands though... so you grab two and create the race boundries."
  puts "One of the turtles asked to be sponsered by you. What's their race moniker?"
  self.turt = gets.chomp.capitalize
  puts "\n"

  player_turt = rand(1..20)
  smol_turt = rand(1..20)

  if player_turt == smol_turt
    puts "It's a tie!"
  elsif player_turt > smol_turt
    puts  "#{turt} won!"
  else
    puts "#{turt} crossed the finish line last."
  end

#turtle stack
def stack
  puts "\n"
  puts "The turtles nod and know what to do... afterall, the universe is just turtles all the way down."
  puts "They slowly climb ontop one another's shells."
  puts "\n"
  puts "You are now enlightened"  
end

#dragon turtle dnd 
def combat

  player_turt = rand(1..20)
  dragon_turt = rand(1..20) 

  if player_turt == 20
    puts "Holy Mackerel! This turtle unleashed its hidden potential and knocked the Dragon Turtle out"
  elsif player_turt == 1
    puts  "Ouch. This turtle tripped and landed on it's back. The Dragon Turtle sympathetically helps flip them over." 
    puts  "They awkwardly nod to eachother, and wander away."
  else
    put "This turtle tries to chomp, but misses."
    put "The Dragon Turtle is not amused, easily knocking the smaller turtle overboard."
  end

end

#wisdom

#exit
end
end
