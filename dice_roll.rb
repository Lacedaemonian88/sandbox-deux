player_guess = rand(1..6)
computer_roll = rand(1..6)

if computer_roll == player_guess
  pp "You guessed correctly."
else
  pp  "Sorry, you guessed #{player_guess}. The die landed on #{computer_roll}." 
end
