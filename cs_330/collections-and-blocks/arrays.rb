a = ["Matz", "Guido", "Dojo", "Choi", "John"]

# variable "d" below is creating an array with the same elements
# as variable "a" above
d = %w{Matz Guido Dojo Choi John}

b = [5, 6, 9, 3, 1, 2, 4, 5, 8, 10]

c = ["Dojo", 9]


puts a[0]
puts a[4]

# Combines arrays "a" and "b" into one single array
x =  a + b

# Combines arrays "a" and "b" and subtracts array elements that
# match array "c" from the combine array
y = (a + b) - c
puts y.to_s

# Returns an one array that
# combines elements from both arrays puts x

# Converts the array to a string and displays it on
# one line like:
# ["Matz", "Guido", .. , 8, 10]
puts x.to_s

# Shuffles the items in an array and
# returns a string
puts a.shuffle.to_s

# Joins elements in an array as a string
puts a.join("-")

# Removes an element by value from an array
a.delete("Choi")
puts a

puts "Length of a is #{a.length}"

puts a.reverse.to_s

puts d.reverse.to_s

# Joins array elements into a string
puts d.join("-")

# Returns the first two elements of array "d"
puts d.slice(0, 2).to_s