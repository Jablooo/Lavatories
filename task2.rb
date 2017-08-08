=begin
**BRIEF**
Create a Celsius class, that takes the temperature as a parameter.

Remember to use the `initialize` method
Define a method that returns the temperature in Fahrenheit. For the
conversion we can use the formula `temperature*1.8 + 32`. Round up
the result so it doesn’t contain any decimal values.

Use the round method

Create a script that prompts you to fill in the temperature for
each day of the week (Monday - Sunday) and for the inputs
16, 17 18, 18, 21, 16, 19 prints out the following output:

```Mon | 16 degrees C  | 61 degrees F
Tue | 17 degrees C  | 63 degrees F
Wed | 18 degrees C  | 64 degrees F
Thu | 18 degrees C  | 64 degrees F
Fri | 21 degrees C  | 70 degrees F
Sat | 16 degrees C  | 61 degrees F
Sun | 19 degrees C  | 66 degrees F```

**SUDO**
1. create a celcius class

=end

class Celsius
  def initialize(temp)
    @temp = temp
  end

  def to_fah
    fahrenheit = @temp*1.8 + 32
    fahrenheit.round
  end
attr_accessor :temp
end

class Day
  def initialize(name, celsius)
    @name = name
    @celsius = celsius
  end

  def getTemp
    @celsius = Celsius.new(gets.chomp.to_i)
  end

attr_accessor :name, :celsius
end

monday = Day.new("Mon", 17)
tuesday = Day.new("Tue", 18)
wednesday = Day.new("Wed", 19)
thurday = Day.new("Thu", 20)
friday = Day.new("Fri", 21)
saturday = Day.new("Sat", 22)
sunday = Day.new("Sun", 23)



week1 = [monday, tuesday, wednesday, thurday, friday, saturday, sunday]

week1.each do |day|
  print "#{day.name} temp is.......#{day.celsius}."
end











#
# week1.each do |day|
#   print "#{day.celsius.to_fah}"
# end
