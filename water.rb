integers = [1, 21, 35, 105]
integer = integers.sample
# write your program below

i = integer
output = ""
	
if (i % 3) == 0 
	output += "Pling"
  end
if (i % 5) == 0
	output  += "Plang"
end
if (i % 7) == 0
	output +="Plong"
else
	pp i
end
pp output


i = integer
if  (i % 3) == 0 && (i % 5) == 0 && (i % 7) == 0
	pp "PlingPlangPlong"
elsif (i % 3) == 0 
	pp "Pling"
elsif (i % 5) == 0
	pp "Plang"
elsif (i % 7) == 0
	pp "Plong"
elsif (i % 3) == 0 && (i % 5) == 0
	pp "PlingPlang"
elsif (i % 5) == 0 && (i % 7) == 0
	pp "PlangPlong"
elsif (i % 3) == 0  && (i % 7) == 0
	pp "PlingPlong"
else
	pp i

end
