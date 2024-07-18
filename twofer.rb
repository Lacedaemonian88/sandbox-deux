name = ["raghu", "Bob", ""]. sample

name.split.each do |x|
  if x == [""]
    pp "One for you, one for me."
  else
    pp "One for #{x.capitalize}, one for me."
  end
end
