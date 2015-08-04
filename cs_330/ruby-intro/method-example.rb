def test(a1 = "Ruby", a2 = "Perl")
  puts "The programming language is #{a1}."
  puts "The programming language is #{a2}."
end

# Arguments in line below overwrite the assigned
# method parameters
test("C", "C++")

# Method call below executes the assigned
# method parameters
test

def test2(a1, a2)
  puts "The programming language is #{a1}."
  puts "The programming language is #{a2}."
end

test2("PHP", "Classic Visual Basic")