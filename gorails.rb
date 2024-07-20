puts 2 + 2

=begin
arr = [1, 2, 3, 4, 5]
[5, 4, 3, 2, 1]
arr1 = _ #grabs last array (unaaagined thing that was recently returned/)
  --only works for irb
=end

arr1 = [5, 4, 3, 2, 1]
arr1[0] = 25

arr1[-1] = arr1[-1] * 10

arr1[1] += 6

arr1 << 100 # shove method to push number to end
arr1.push(200) #.push method

arr1.unshift("world") # --add to begining of array
# arr1.shift # deletes 1st element
arr1.prepend("Hello, world")  # [Unshift method] Easier way to remember difference between shift and unshift
arr1.length
# or 
arr1.size

framework = ["Ruby", "on", "Rails"]
framework.join
framework.join(" ")

"Ruby on rails".split
