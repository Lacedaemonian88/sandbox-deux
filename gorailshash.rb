credentials = {public_key: "asdf1234", secret_key: "4321fdsa"}

credentials[:public_key]
credentials[:secret_key]

#update key
credentials[:public_key] = "asdfasdfasdf"

credentials[:region] = "aws-east-2"
credentials.size

credentials.keys
credentials.values

# credentials.delete(:region) -- delete keys

me = {name: "Tempest", age: 32, hobbies: ['dnd','nature', 'surfing']}
me[:hobbies]
me[:hobbies].join(", ") # takes away array braquet- makes it into a string

pets = { 
  dog: {name: 'doggo'},
  cat: {name: "Dawon"}
}

pets[:dog][:name] 
pets.dig(:dog, :name) ## easier method... digs down into nested methos instead of using multile [] --> must be passed in order
