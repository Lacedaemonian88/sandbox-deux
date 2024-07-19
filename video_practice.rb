# WHILE LOOP

index = 1 
while index <= 5
  puts index
  index +=1
end 


# FOR LOOPS

# for index in 0..5   # for every number with[in] range 0 to 5, print it out
#   puts index
# end

5.times do |turtle| # an interating variable
  puts turtle
end

lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_turt in lucky_nums  # lucky_turt is interating variable  || lucky_num = name of structure wanting to be looped
  puts lucky_turt
end

# or

lucky_nums = [4, 8, 15, 16, 23, 42]
lucky_nums.each do |lucky_turt|
  puts lucky_turt
end


class Turtle
  attr_accessor :turt, :env

  def scritchTurt()
    puts "You found a #{self.turt}, relaxing on #{self.env}. Give 'em a scritch!"
  end
end

turt1 = Turtle.new()
turt1.turt = "green sea turtle"
turt1.env = "the beach"

turt1.scritchTurt()
puts turt1.turt

# CONSTRUCTORS

class Turtle
  attr_accessor :turt, :env
  def initialize(turt, env)
    @turt = turt
    @env = env
  end

  def scritchTurt()
    puts "You found a #{self.turt}, relaxing on #{@env}. Give 'em a scritch!"
  end
end
 
turt1 = Turtle.new("honu", "the beach")
puts turt1.turt

# Getters and Setters

class Turtle
  attr_accessor :turt, :env
  def initialize(turt, env)
    self.turt = turt
    @env = env
  end

  def turt=(turt)   ## Setters allow you to assign new attributes
    puts "Set"
    @turt = turt
  end

#   def turt 
#     puts "Get"
#     return @turt
#   end
 end
 
# turt1 = Turtle.new("honu", "the beach")
# puts turt1.turt

tort = Turtle.new("Takaroa's Chosen", "Kailani")
p tort.turt


# Inheretence

class Honu
  def oracle()
    puts "this turt speaks to Nuth"
  end

  def chosen()
    puts "this turt fights for Takaroa"
  end

  def _self()
    puts "this turt doesn't know who she is"
  end
end

class HonuStormconch < Honu
  def cleric()
    puts "this turt helps out her friends"
  end

  def monk()
    puts "this turt heckin' punches"
  end

  def maia()
    puts "this turt want to get some cuddles"
  end

  def _self()
    puts "this turt knows who she is"
  end
end

lil_turt = Honu.new()
lil_turt._self()

stronk_turt = HonuStormconch.new()
stronk_turt._self()


# Inheretence Constructors
class Honu

  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  def oracle()
    puts "this turt speaks to Nuth"
  end

  def chosen()
    puts "this turt fights for Takaroa"
  end

  def _self()
    puts "this turt doesn't know who she is"
  end
end

class HonuStormconch < Honu
  attr_accessor :island_of_origin
  def initialize(name, age, island_of_origin)
      @island_of_origin = island_of_origin
      super(name, age)
  end 
  
  def cleric()
    puts "this turt helps out her friends"
  end

  def monk()
    puts "this turt heckin' punches"
  end

  def maia()
    puts "this turt want to get some cuddles"
  end

  def _self()
    puts "this turt knows who she is"
  end
end


lil_turt = Honu.new("The Oracle", 28)
lil_turt._self()

stronk_turt = HonuStormconch.new("Honu Stromconch", 28, "Kailani")
stronk_turt._self()
puts stronk_turt.age
