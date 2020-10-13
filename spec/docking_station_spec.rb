require "docking_station"

describe DockingStation do
  it "responds to release_bike" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.respond_to?).to eq true
  end

end
