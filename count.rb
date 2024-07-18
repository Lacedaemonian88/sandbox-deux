sentences = [
  "the dog, the cat, the zebra, the giraffe",
  "the, the code, and the developer",
  "then the- their"
]
sentence = sentences.sample
# write your program below


#split and isolate
 le_word = sentence.split
#count
 num = sentence.gsub(/-/, '').scan(/\bthe\b/).length
 #pp
 pp le_word
pp "'the' appeared #{num} times"


num = 0
le_word = "the"

sentence.split.each do |word|
  num += 1 if word.gsub(/\W/, '') == le_word
end
pp sentence
pp "#{le_word} appeared #{num} times"
