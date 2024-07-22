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
