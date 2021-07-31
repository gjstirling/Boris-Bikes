# Feature test the feature you are building using irb
class DockingStation

   attr_reader :bike

  def initialize  
     @bike = []
  end

  def release_bike
    # returns an instance of the bike class 
    fail "No bikes availiable" if @bike.empty?
    @bike
  end

  def dock(bike)
    fail 'Docking station full' if (@bike.length == 20) 
    @bike << bike 
  end

end



# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.