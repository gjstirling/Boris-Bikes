require 'docking_station'

describe DockingStation do
  before(:each) do
    @docking_station = DockingStation.new
  end
  
  it "respond to release bike method" do
    expect(@docking_station).to respond_to(:release_bike)
  end

  it "get a bike and check that it is working?" do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

  it 'responds to dock' do
    expect(@docking_station).to respond_to(:dock).with(1).argument
  end

#   # This test I now understand  
  it 'allows the user to dock a bike and the bike gets stored in the docking station' do
    # create instance of bike
    bike = Bike.new
    # store this instance in dock 
    @docking_station.dock(bike)
    # now run test to check our instance variable @bike = bike 
    expect(@docking_station.bike).to eq bike
  end
describe '#release_bike' do
  it 'raises error when no bikes are availaible' do
    expect {@docking_station.release_bike}.to raise_error "No bikes availiable"
  end 
end
  # docking station
  # not charging bikes unnecessarily
  # not release bikes if no bikes -> raise error

describe '#dock' do 
  it 'raises error when dock already contains bike' do
  
    @docking_station.dock(Bike.new)
    expect {@docking_station.dock Bike.new}.to raise_error "Docking station full"
  end
end

end
