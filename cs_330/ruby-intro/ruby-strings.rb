x = "CodingDojo"
z = "john, charles, matt, joe"
y = ""

# String length
puts x.length

# Show class type
puts x.class

# Capitalize first letter
puts x.capitalize

# Capitalize all letters
puts x.upcase

# Lowercase all letters
puts x.downcase

# Print index 2 of the "CodingDojo" string
puts x[2]

# Statement says "x" include "dojo" which is
# case sensitive and returns "false"
puts x.include?("dojo")

# Display the "puts" string below
# IF "x" includes the string "Dojo"
puts "This string has 'Dojo'" if x.include?("Dojo")

# Code splits a string with commas into an array
puts z.split(",")
puts z.split(",").to_s

# Execute the "puts" statement
# if "y" is an object with a value of an empty string
puts "Y is empty" if y.empty?

# Line with double-quotes is executing with string interpolation
# AND line with single quotes has the "#{24 + 8}" text display as a string
puts "24 plus 8 is #{24 + 8}"
puts '24 plus 8 is #{24 + 8}'

puts "hello".split
puts "hello".split("")