rolls = []

8.times do #|a_roll|
  dice = rand(1..6)
  rolls.push(dice)
end

# rolls.each do |a_roll|
#   a_roll
# end

pp rolls
