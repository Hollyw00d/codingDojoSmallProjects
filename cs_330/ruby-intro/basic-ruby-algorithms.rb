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

# Print an array as a string
# arr = [1, 2, 3, 4, 5, 6]
# puts arr.to_s

# Find the maximum value in an array and print it out
# arr = [-5, 0, 55, -9, 33]
# puts arr.max

# Find the minimum value in an array and print it out
# arr = [-5, 0, 55, -9, 33]
# puts arr.min

# Print the average of numbers in an array


# "arr.reduce(:+)" combines all the numbers in an array,
# ".to_f" returns a floating point number which is needed
# so that "arr.reduce(:+)" ISN'T rounded, AND
# "length" shows the number of elements in the array
# arr = [-5, 0, 55, -9, 33]
# avg = arr.reduce(:+).to_f / arr.length
# puts "#{avg}"

# return the array values that are greater than "y"
# arr = [1, 3, 5, 7]
# new_arr = []
# y = 3
#
# arr.each do |item|
#   if item > y
#     new_arr.push(item)
#   end
# end
#
# puts new_arr.to_s

# square values in an array
# arr = [1, 5, 10, -2]
#
# # "map" takes an enumerable object (the "arr" array) and
# # runs the block ("|item| item * item") for each array element and
# # finally this altered array is reassigned back to the "arr" variable
# arr = arr.map{ |item| item * item }
#
# puts arr.to_s

# Replace Negative Numbers in an Array with 0
# arr = [1, 5, 10, -2]
# temp = []
#
# arr.each do |item|
#   if item < 0
#     temp.push(0)
#   else
#     temp.push(item)
#   end
# end
#
# arr = temp
# puts arr.to_s



# Shift Values in an Array to the Left by using an Array of Numbers,
# and Returning an Altered Array that
# Reduces all Indices from the Original Array by 1 and
# Returns 0 for the Last Array Index
arr = [1, 5, 10, -2]
temp = []

arr.each_with_index do |val, idx|
  if arr[idx + 1] == nil
    temp.push(0)
  else
    temp.push(arr[idx + 1]);
  end
end
arr = temp

puts arr.to_s


# Replace Negative Number(s) in an Array with the String "Dojo"
# arr = [-1, -3, 2]
# temp = []
#
# arr.each do |val|
#   if val < 0
#     temp.push("Dojo")
#   else
#     temp.push(val)
#   end
# end
#
# arr = temp
# puts arr.to_s