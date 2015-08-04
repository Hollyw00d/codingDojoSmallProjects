# print numbers 1 thru 255 using for loop
# for i in 1..255
#   puts "#{i}"
# end

# print numbers 1 thru 255 using each method
# (1..255).each do |i|
#   puts "#{i}"
# end

# print odd numbers 1 thru 255 using an each loop
# (1..255).each do |i|
#   if i % 2 != 0
#     puts "#{i}"
#   end
# end

# print odd numbers 1 thru 255 using a while loop
# i = 1
# max = 255
#
# while i < max do
#   puts "#{i}"
#   i += 2
# end

# Print the sum of numbers 0 thru 255 inclusive
# sum = 0
# (0..255).each do |i|
#   puts "New number: #{i} // Sum: #{sum}"
#   sum += i
# end

# Print all numbers in an array
# arr = [1, 2, 3, 4, 5, 6]
# arr.each{
#   |x| puts x
# }

# Find the maximum value in an array and print it out
# arr = [-5, 0, 55, -9, 33]
# puts arr.max

# Find the minimum value in an array and print it out
# arr = [-5, 0, 55, -9, 33]
# puts arr.min

# Print the average of numbers in an array
arr = [-5, 0, 55, -9, 33]

# "arr.reduce(:+)" combines all the numbers in an array,
# ".to_f" returns a floating point number which is needed
# so that "arr.reduce(:+)" ISN'T rounded, AND
# "length" shows the total numbers of the array but I don't know the difference
# between ".length" and ".size"
avg = arr.reduce(:+).to_f / arr.length
puts "#{avg}"


