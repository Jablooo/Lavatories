class StallsM
  def initialize(occupied)
    @occupied = occupied
  end
attr_accessor :occupied

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
stallM1 = StallsM.new("false")
stallM2 = StallsM.new("false")
stallM3 = StallsM.new("true")
stallM4 = StallsM.new("false")
stallM5 = StallsM.new("false")

def malFree
  StallsM.all.each do |lav|
  @malFree = []
  @malFree << lav.occupied
  @answerM = @malFree.include?("false")
  end
end

malFree
if @answerM == true
  puts "There is at least 1 free lavotory"
else
  puts "All fall up, try again later"
end
