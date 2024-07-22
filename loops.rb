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
