require 'docking_station'

describe DockingStation do
  before(:each) do
    @docking_station = DockingStation.new
  end
  it "respond to release bike method" do
    expect(@docking_station).to respond_to('release_bike')
  end
  # one line version of above
  subject { @docking_station }
  it { respond_to('release_bike') }

end

