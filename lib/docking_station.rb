class DockingStation

  attr_reader :bikes

  def initialize
    # @bikes = []
    @bikes = bikes
  end

  def release_bike
    # returns an instance of the bike class 
    Bike.new
  end

  def dock(velo)
    @bikes 
    # @bikes << velo
  end
end

station = DockingStation.new
puts station.dock('velo') 