class ParentClass
  def a_method
    puts "b"
  end
end

# "SomeClass" class below inherits from "ParentClass" class
class SomeClass < ParentClass
  def another_method
    puts "a"
  end
end

new_object = SomeClass.new

# Non-inherited method
new_object.another_method

# "a_method" was inherited by the "SomeClass" class
# from the "ParentClass" class
new_object.a_method