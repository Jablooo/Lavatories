=begin
**BRIEF**
Come up with your own real life problem
Your problem should contain at least three Classes
Bouild an application that fixes your problem.

3 Classes
1 Gem

**Problem**
Nothing worse than going to the bathroom and finding out
there are no cubicles. Why can't it be like in the airplane.
No more with these new automated toilet app.
=end

class User
  def initialize(name, sex)
    @name = name
    @sex = sex
  end
attr_accessor :name, :sex
end

class Bathroom
  def initialize(sex, amount, location)
    @sex = sex
    @amount = amount
    @location = location
  end
  attr_accessor :sex, :amount, :location

  def maleOption
    puts "#{@amount} toilets available #{@location}"
  end

  def femaleOption
    puts "#{@amount} toilets available #{@location}"
  end
end
male = Bathroom.new("m", 1, "by the elevator")
female = Bathroom.new("f", 2, "by the elevator")

class StallsM
  def initialize(occupied)
    @occupied = occupied
  end
attr_accessor :occupied

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
stallM1 = StallsM.new("False")

class StallsF
  def initialize(occupied)
    @occupied = occupied
  end
attr_accessor :occupied

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
stallF1 = StallsF.new("True")
stallF2 = StallsF.new("False")


puts "Enter username & sex"
puts "Name:"
puts "Sex: [M]/[F]"
user = User.new(gets.chomp.capitalize, gets.chomp.downcase)
puts "Welcome #{user.name}"

if user.sex == "m" && stallM1.occupied == "False"
  # puts "this works"
  male.maleOption
elsif user.sex == "f" && (stallF1.occupied == "False" || stallF2.occupied == "False")
  female.femaleOption
  # puts "this also works"
else
  either = male.amount + female.amount
  puts "In which case you can use either"
  puts "#{either} toilets available #{female.location}"
end




# puts stallF2.occupied
