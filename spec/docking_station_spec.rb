require 'docking_station'

describe DockingStation do
   before(:each) do
     @docking_station = DockingStation.new
   end
  
  # it "respond to release bike method" do
  #   expect(@docking_station).to respond_to('release_bike')
  # end
  # one line version of above
  
  # test 1 release bike
  subject { @docking_station }
  it { respond_to('release_bike') }
  # test 2 
  it "To get a bike and check that it is working?" do 
    expect(@docking_station).to (Bike.new)
  end

end

