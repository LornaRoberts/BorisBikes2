require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

end

describe DockingStation do
  it "releases bike and bike is working" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }
end

describe DockingStation do
  it "feature test" do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to eq "Bike docked!"
  end
end
