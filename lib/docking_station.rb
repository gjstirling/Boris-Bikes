class DockingStation

  attr_reader :bike

  def initialize(bike)
    @bike = []
  end

  def release_bike
    # returns an instance of the bike class 
    Bike.new
  end
  
  def dock(velo)
    @bike << velo
  end
end

# Class is now defined so no longer recieveing error

# release_bike method undefined so now no method error appearing
