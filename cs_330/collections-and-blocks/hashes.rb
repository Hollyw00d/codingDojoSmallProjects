# A hash in Ruby is similar to an associative array in PHP
x = {"first_name" => "Coding", "last_name" => "Dojo"}

# Code below displays "Coding"
puts x["first_name"]

# Code below displays "Your last name is Dojo"
# if the 'x["last_name"]' hash value is equal to "Dojo"
# using 4 difference formats and "eql" refers to hash equality ONLY
puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

puts "Your last name is Dojo" if x["last_name"].include? "Dojo"

if x["last_name"] === "Dojo"
  puts "Your last name is Dojo"
end

if x["last_name"] == "Dojo"
  puts "Your last name is Dojo"
end

# Another way to show hash key/value pairs using
# symbols for keys and this may be faster than using
# strings for hash keys
y = {:first_name => "Coding", :last_name => "Dojo"}

# Outputs "Coding"
puts y[:first_name]

# Outputs "{:first_name => "Coding", :last_name => "Dojo"}"
puts y.to_s

y.delete(:first_name)

# Outputs "{:last_name => "Dojo"}"
puts y.to_s

z = {}

# Returns "true" because "z" hash has no value
puts z.empty?

# Returns "true" because "y" has a key of ":last_name"
puts y.has_key? :last_name

# Returns "true" because "y" has a value of "Dojo"
puts y.has_value? "Dojo"