# Feature test the feature you are building using irb
class DockingStation

   attr_reader :bike

  #def initialize  
  #end

  def release_bike
    # returns an instance of the bike class 
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end



# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.