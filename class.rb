class House
  
  @@count = 0

  def self.count
    @@count
  end

  def self.report_count_of_instances
    "There are #{count} of instances of the #{name} class"  # implicit self
    # or "There are #{self.count} of instances of the #{self.name} class"
  end
  # attr_reader :color #attribute reader
  # attr_writer :color
  attr_accessor :color, :style

  def initialize(color, style)
    @color = color # @ ===> instance variable
    @style = style
    @@count += 1
  end

   def details
      "This house is a #{color} #{style} house instance."
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

puts House.report_count_of_instances
puts House.count
house =  House.new("blue", "craftsman")
puts house.details
puts House.count 
