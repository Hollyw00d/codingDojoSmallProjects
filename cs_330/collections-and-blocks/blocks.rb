def test
  puts "You are in the method"
  # "yield" below excutes the code inside the "test" method call
  # which is 'puts "You are in the block"'
  yield
  puts "You are again back to the method"
  yield
end

# Block below includes text inside "{...}" and executes on the
# "test" method call
test { puts "You are in the block" }

def test2
  # "yield(5)" passes a value of 5 to the "test2" method call below
  yield(5)
  puts "You are in the method test"
  yield(100)
end

test2 { |val| puts "You are in the block #{val}" }

# "square(5)" below passes in a value of 5 to "square(num)"
def square(num)
  # Line below executes as "num as 5"
  puts "num is #{num}"

  # Line below passes the value of 5 to the "square(5)" method block
  # so that the "puts" statement printed out is:
  # "yield(num) has a value of 25"
  puts "yield(num) has a value of #{yield(num)}"

  x = yield(num)
  puts "x has a value of #{x}"

  y = yield(num) * x
  puts "y has a value of #{y}"
end

square(5) { |val| val * val }

def test3
  yield 5
  puts "You are in the method test"
  yield 100
end

test3 {|val| puts "You are in the block #{val}"}