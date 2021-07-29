require 'docking_station'

describe DockingStation do
  before(:each) do
    @docking_station = DockingStation.new
    @bike = Bike.new
  end
  # @docking_station = DockingStation.new

  it "respond to release bike method" do
    expect(@docking_station).to respond_to('release_bike')
  end
  # subject { @docking_station }
  # it { respond_to('release_bike') }

  it "get a bike and check that it is working?" do
    expect(@docking_station.release_bike.working?).to eq(true)
  end

  it 'responds to dock' do
    expect(@docking_station).to respond_to(:dock)
  end

  it 'test function dock, is working & biked are docked' do
    # @docking_station.bikes = []
    # expect(@docking_station.dock('velo')).to eq('velo')
    # @docking_station.dock('velo')
    expect(@docking_station.dock('velo')).to eq('velo')
  end
end

  # when 'stores hired bikes'
  # then add bike to docking station
  # test if station is filled