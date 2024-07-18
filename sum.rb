inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers
# write your program below

# numbers.split.to_i.each do |number|
#   if number.odd?
#     pp number.sum
#   end
#   pp number
# end
sum = 0
numbers.each do |i|
if i.to_i.odd?
  sum += i.to_i
  end
end

pp sum
