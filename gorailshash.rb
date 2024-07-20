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

me
