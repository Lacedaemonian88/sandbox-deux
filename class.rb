class House

  @@count = 0
  # attr_reader :color #attribute reader
  # attr_writer :color
  attr_accessor :color, :style

  def initialize(color, style)
    @color = color # @ ===> instance variable
    @style = style
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


house =  House.new("blue", "craftsman")
puts house.color
 #can be written as: 
# house.color=("purple")
# # or
# house.color = "purple"
# puts house.color
puts house.style
