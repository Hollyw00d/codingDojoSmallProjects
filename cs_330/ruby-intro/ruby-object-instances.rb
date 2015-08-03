class Instructor1
  attr_accessor :name, :clan
end

jay = Instructor1.new
jay.name = "Ketul"
jay.clan = "Mountain View"
puts jay.name
puts jay.clan


class Instructor2
  # Getter and setter for
  # "name" and "class" properties
  attr_accessor :name, :clan
  def initialize(name, clan)
    @name = name
    @clan = clan
  end
end

jae = Instructor2.new("Jae Hoon", "Bellevue")

puts jae.name
puts jae.clan