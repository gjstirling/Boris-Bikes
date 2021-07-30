
class DockingStation

   attr_reader :bike

  def initialize
    @bike = bike
  end

  def release_bike
    # returns an instance of the bike class 
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

end

