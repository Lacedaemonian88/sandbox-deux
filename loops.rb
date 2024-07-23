# times loop

20.times do
  puts "I'm looping..."
end

# upto and downto
1.upto(10) do
  puts "going up!"
end

5.upto(100) { |n| puts n }
10.downto(2) { |n| puts n }

# while

num = 5
while num <= 50 
  puts "not greater than or equal to 50 yet"
  num += 1 
end


#until
until num > 50
  puts "Not there yet..."
  num += 1
end

#each 
nums = [1, 2, 3, 4, 5]

nums.each { |num| puts num }

# or 
nums.each do |num|
  puts num
end

negative_nums = [-1, -2, -3, -4, -5]
positive_nums = negative_nums.map { |num| num.abs}

puts positive_nums
puts negative_nums


def some_numbers(arr_of_nums, &code_block) #denotes array
  arr_of_nums.each { |num| code_block.call(num) }
end

some_numbers(negative_nums) do |num|
  puts num.abs
end

def some_numbers(arr_of_nums)
  arr_of_nums.each { |num| yield num }
end


print_capitalize_name = Proc.new { |name| puts name.capitalize}
print_capitalize_name.call("tempest")

["tempest", "chance"].each &print_capitalize_name
# ["tempest", "chance"].map { |name| name.capitalize}
["tempest", "chance"].map(&:capitalize)


# def some_numbers(arr_of_nums, &code_block)
#   arr_of_nums.each { |num| code_block.call(num) }
# end
# negative_nums = [-1, -2, -3]
# some_numbers(negative_nums)

# def some_numbers(arr_of_nums, &code_block)
#   arr_of_nums.each { |num| yield num }
# end
# negative_nums = [-1, -2, -3]
# some_numbers(negative_nums)


### Block_Given ###
def some_numbers(arr_of_nums, &code_block)
  arr_of_nums.each { |num| code_block.call(num) if block_given?}
end 
some_numbers(negative_nums)

def some_numbers(arr_of_nums, &code_block)
  arr_of_nums.each { |num| yield num  if block_given?}
end
negative_nums = [-1, -2, -3]
some_numbers(negative_nums)

# Lambda

l = lambda {puts "hello"}
p = Proc.new {puts "hey"}

p.call
l.call

stabby_lambda = -> {puts "Stabby Lambda"} # ruby on rails -- define scopes
stabby_lambda.call


greet_person = -> (name) { puts "Hello, #{name}" }
greet_person.call("Tempest")

bid_farwell = Proc.new{ |name| puts "goodbye, #{name}"}
bid_farwell.call("Tempest")
