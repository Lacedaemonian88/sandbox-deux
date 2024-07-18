unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample
# write your program below

 some_random_input.each do |thing|
  prompts = thing.split("")
    if prompts.class == String
      pp prompts.downcase
    elsif 
      prompts.class == Integer
      if prompts.even?
        pp "#{prompts} is even"
      else 
        pp "#{prompts} is odd"
      end
    elsif
       prompts.class == nil
      pp "no object provided"
    elsif 
      prompts.class == Time
      pp prompts.strftime("%A").downcase 
    elsif 
      prompts.class == Symbol
      pp "#{prompts}".downcase
    elsif 
      prompts == true
      pp "you may pass"
    elsif 
      prompts == false
      pp "you may not pass"
    elsif 
      prompts == Hash
      pp prompts.keys
  end
end
pp some_random_input
