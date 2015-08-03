class Heart
  # public method below
  def public_method(test_string)
    puts "#{test_string}"
  end

  # Protected methods below
  protected
    def protected_method1
    end
    def protected_method2
    end

  # Private methods below
  private
    def private_method1
    end
    def private_method2
    end
end

love = Heart.new;
love.public_method("blah")

class MyClass
  # A class method that has "self." before the method name
  # and have access to class variables but not instance variables
  def self.some_method
    puts "something"
  end
end

MyClass.some_method;