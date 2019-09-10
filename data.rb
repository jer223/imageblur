require 'active_support/all'
#Ruby programming langauge
#variables-number, float, string, symbols
num = 1
f = 1.0
string = "Hello!"
sym = :symbol # "symbol"
#arrays
array = [1,2,3,4]
#hash table
hash = {
  1 => "One",
  2 => "Two",
  3 => "Three",
  4 => "Four"
}

#puts hash.to_json.inspect
json_string = '{"1":"One","2":"Two","3":"Three","4":"Four"}'

parsed = ActiveSupport::JSON.decode(json_string)
puts parsed.inspect

puts parsed[1].inspect
puts hash[1].inspect