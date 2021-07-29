require 'docking_station'
require 'bike'

describe DockingStation do
   before(:each) do
     @docking_station = DockingStation.new
   end
  
  it "respond to release bike method" do
    expect(@docking_station).to respond_to('release_bike')
  end
  # subject { @docking_station }
  # it { respond_to('release_bike') }

  it "To get a bike and check that it is working?" do
    expect(@docking_station.release_bike.working?).to eq(true)
  end

end

