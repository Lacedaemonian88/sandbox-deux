
    puts "\n"
    puts "A Dragon Turtle suddenly appears. One the turtles steps up, ready for combat!"
    puts "\n"

    warrior_turt = rand(1..20)

    until warrior_turt => 15

      puts "The warrior turtle lunges forward for a chomp, but misses."
      puts "The Dragon Turtle counters."
    elsif warrior_turt == 1
      puts  "Ouch. The warrior turtle tripped and landed on it's back. The Dragon Turtle sympathetically helps flip them over." 
      puts  "They both awkwardly nod to eachother, and wander away. Pretending this encounter never happened."
    else
      puts "Holy Mackerel! This turtle unleashed its hidden potential and knocked the Dragon Turtle out"

    end
  end  
