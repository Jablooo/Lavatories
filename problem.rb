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






class StallsM
  def initialize(boolean)
    @occupied = boolean
  end

  attr_accessor :occupied

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end








stallM1 = StallsM.new("false")
stallM2 = StallsM.new("false")
stallM3 = StallsM.new("false")
stallM4 = StallsM.new("true")








class StallsF
  def initialize(occupied)
    @occupied = occupied
  end

  attr_accessor :occupied

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end



stallF1 = StallsF.new("false")
stallF2 = StallsF.new("false")
stallF3 = StallsF.new("false")
stallF4 = StallsF.new("true")

class Bathroom
  def initialize(sex, amount, location)
    @sex = sex
    @amount = amount
    @location = location
  end
  attr_accessor :sex, :amount, :location

  def maleOption
    puts "Lavatories available #{@location}"
  end

  def femaleOption
    puts "Lavatories available #{@location}"
  end
end

#need to fix number in here
male = Bathroom.new("m", 4, "by the elevator")
female = Bathroom.new("f", 4, "by the elevator")

def femFree
  StallsF.all.each do |lav|
    @femFree = []
    @femFree << lav.occupied
    @answerF = @femFree.include?("false")
  end
end

def malFree
  StallsM.all.each do |lav|
    @malFree = []
    @malFree << lav.occupied
    @answerM = @malFree.include?("false")
  end
end


puts "Enter username & sex"
puts "Name:"
puts "Sex: [M]/[F]"
user = User.new(gets.chomp.capitalize, gets.chomp.downcase)
puts "Welcome #{user.name}"

if user.sex == "m"
  malFree
  if @answerM == true
    puts "There is a free lavotory"
    male.maleOption
  else
    puts "All full up, try again later"
  end

elsif user.sex == "f"
  if @answerF == true
    puts "There is at a free lavotory"
    female.femaleOption
  else
    puts "All full up, try again later"
  end

else
  either = male.amount + female.amount
  puts "In which case you can use either"
  puts "#{either} toilets available #{female.location}"
end




# puts stallF2.occupied
