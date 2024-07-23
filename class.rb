class House
  attr_reader :color #attribute reader
  attr_writer :color

  def initialize(color)
    @color = color # @ ===> instance variable
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


house =  House.new("blue")
puts house.color
 #can be written as: 
# house.color=("purple")
# # or
house.color = "purple"
puts house.color
