# class User
#   # Getter method
#   def first_name=(val)
#     @first_name = val
#   end
#   # Setter method
#   def first_name
#     @first_name
#   end
# end

# class User
#   # Getter method
#   attr_reader :first_name
#   # Setter method
#   attr_writer :first_name
# end

class User
  # All in one
  # getter and setter method
  attr_accessor :first_name
end

user1 = User.new
user1.first_name = "kobe"
puts user1.first_name



