# secret = [
#   "I have a secret to share",
#   "Is this secure enough for my password?",
#   "we should be more clever"
# ].sample
# encode = secret.gsub(/[aeiou]/, 'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5')

# pp encode.downcase


secret = [
  "3 h1v2 1 s2cr2t t4 sh1r2",
  "3s th3s s2c5r2 2n45gh f4r my p1ssw4rd?",
  "w2 sh45ld b2 m4r2 cl2v2r"
].sample
pp secret
# write your program below

decode = secret.gsub(/[12345]/, '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u')
pp decode.capitalize

	

#a = 1, e = 2, i = 3, o = 4, u = 5
