class Day
  def initialize(name, temperature)
    @name = name
    @temperature = temperature
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

attr_accessor :name, :temperature
end

class Temperature
  def initialize(celsius)
    @celsius = celsius
  end

  def to_f
    @celsius * 1.8 + 32
  end
attr_accessor :celsius
end

# monday = Day.new("Mon", Temperature.new(16))
# puts monday.temperature.to_f
# puts monday.temperature.celsius
# #asking monday. What is your temperature?

#
# week1.each do |day|
#   puts "hey, what was the temperature on day #{day}"
#   Day.new(number, Temperature.new(gets.chomp.to_i))
# end

rows = []

# puts box
Day.all.each do |day|
  puts "On #{day.name} the temperature was #{day.temperature.to_f}"
    rows << [day.name, day.temperature.to_f]
end
