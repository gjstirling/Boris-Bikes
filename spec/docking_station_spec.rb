require 'docking_station'

describe DockingStation do
  before(:each) do
    @docking_station = DockingStation.new
    @bike = Bike.new
  end
  # @docking_station = DockingStation.new

  it "respond to release bike method" do
    expect(@docking_station).to respond_to(:release_bike)
  end
  # subject { @docking_station }
  # it { respond_to('release_bike') }

  it "get a bike and check that it is working?" do
    expect(@docking_station.release_bike.working?).to eq(true)
  end

  it 'responds to dock' do
    expect(@docking_station).to respond_to(:dock).with(1).argument
  end

#   # this test I don't understand   
  it 'allows the user to dock a bike and the bike gets stored in the docking station' do
      @docking_station.dock(@bike)
      expect(@docking_station.bike).to eq @bike
  end
end

  # when 'stores hired bikes'
  # then add bike to docking station
  # test if station is filled


