class CodingDojo
  # Class variable avaiable to
  # all properties of this class
  # and object instances
  @@no_of_branches = 0

  # Object initalize method
  def initialize(id, name, address)
    # Object instance variables
    # that are available to an object instance
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    puts "Created branch #{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  # Custom method
  def displayAll
    # "%d" refers to a number and "@branch_id" refer a class property
    puts "Branch ID: %d" % @branch_id
    # "%s" refers to a string and "@branch_name" refers to a class property
    puts "Branch Name: %s" % @branch_name
    # "%s" refers to a string and "@branch_address" refers to a class property
    puts "Branch Address: %s" % @branch_address
  end
end
# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
branch.displayAll
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
branch2.displayAll