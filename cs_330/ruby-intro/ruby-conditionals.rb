x = 1

# IF, ELSE IF, ELSE statements
if x > 2
  puts "x is greater than 2"
elsif x < 2 and x > 0
  puts "x is 1"
else
  puts "I can't guess the number"
end

y = 5

# Execute "puts" statments if code below is true
puts "y is not 2" if y != 2
puts "y is greater than 2" if y > 10

# Execute statement when the "unless" is true
puts "y is not 2" unless x == 5

age = 36

# Switch statement
case age
  when 0..2
    puts "baby"
  when 3..6
    puts "little child"
  when 7..12
    puts "little child"
  when 13..18
    puts "youth"
  else
    puts "adult"
end

# Empty strings and the number zero returns true
if ""
  puts "I am positive"
end

if 0
  puts "I am positive"
end

# Unless "nil" is false
unless nil
  puts "I am negative"
end

# Unless "false" is false
unless false
  puts "I am negative"
end

