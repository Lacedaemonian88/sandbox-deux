class House
  
  @@count = 0

  def self.count
    @@count
  end

  def self.report_count_of_instances
    "There are #{} of instances of the #{} class"
  end
  # attr_reader :color #attribute reader
  # attr_writer :color
  attr_accessor :color, :style

  def initialize(color, style)
    @color = color # @ ===> instance variable
    @style = style
    @@count += 1
  end

  # def color   #reader (getter)
  #  @color
  # end 

  # def color=(new_color)  # writer (setter)
  #   @color = new_color
  # end
end 

# p House.name
# p House.class

puts House.count
house =  House.new("blue", "craftsman")
puts house.color
 #can be written as: 
# house.color=("purple")
# # or
# house.color = "purple"
# puts house.color
puts house.style
puts House.count 
