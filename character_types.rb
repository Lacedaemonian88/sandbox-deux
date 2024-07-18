strings = [
  "here 12 plus 25",
  "puzzle number 04 ",
  " "
]
string = strings.sample
pp string
# write your program below



# isolate characters in string
letter = string.gsub(/[^a-z]/i, "")
num = string.gsub(/[^0-9]/, "")

# count them out => length
letters = letter.length
i = num.length
space = string.count(" ")

# pp
pp "Number of letters in the string is: #{letters}"
pp "Number of spaces in the string is: #{space}"
pp "Number of digits in the string is: #{i}"
