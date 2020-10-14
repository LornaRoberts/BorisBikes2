require "docking_station"


RSpec.describe DockingStation do
  describe "#release_bike" do
    # it {is_expected.to respond_to :release_bike}
    it "dock responds to release bike" do
      is_expected.to respond_to :release_bike
    end
    it "throws an error when there is no bike" do
      expect{subject.release_bike}.to raise_error(RuntimeError, "Error: No bike")
    end
    it "releases bike when there is a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  # describe "#working?" do
  #   it "releases bike and bike is working" do
  #     bike = subject.release_bike
  #     expect(bike.working?).to eq true
  #   end
  # end
  describe "#dock" do
    it "docking station docks bike" do
      is_expected.to respond_to(:dock).with(1).argument
    end
    it "checks if docking was successful (feature test)" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq "Bike docked!"
    end
    it "throws an error when there is a bike" do
      20.times do
        subject.dock(Bike.new)
      end
      expect{subject.dock(Bike.new)}.to raise_error(RuntimeError, "Error: Bike already in place")
    end
  end
  describe "#bike_collection" do
    it "bike_collection attribute" do
      is_expected.to respond_to :bike_collection
    end
    it "bike_collection has no bikes" do
      expect(subject.bike_collection).to eq []
    end
    it "bike_collection 4 bikes" do
      4.times do
        subject.dock(Bike.new)
      end
      expect(subject.bike_collection.length).to eq 4
    end
  end
end
