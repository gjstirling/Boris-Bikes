require 'docking_station'

describe DockingStation do
  it "respond to release bike method" do
    expect(docking_station).to respond_to(release_bike)
  end


end

