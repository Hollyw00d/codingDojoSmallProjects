# Range from 1 to 5
x = (1..5)

# Code below prints "Range"
puts "Class Name: #{x.class}"

# 2 ways to show if "x" range variable includes 3
# display "puts" string
if x.include? 3
  puts "It does include 3!"
end

puts "It does include 3!" if x.include? 3

# Need to use ".to_s" to convert an integer into a string
# so I can concatenate it w/ another string AND
# "x.last" returns the last element of the range
puts "The last number of this range is " + x.last.to_s

puts "The maximum number of the this range is " + x.max.to_s
puts "The minimum number of the this range is " + x.min.to_s

# Start with a range from "a" to "z"
y = ("a".."z")

# ".to_a" converts the range into an array,
# ".shuffle" mixes up the array elements AND
# ".to_s" converts the array back into a string
puts y.to_a.shuffle.to_s

# Code below returns "true" because "b" is a member of the
# "y" range
puts y.member? "b"

