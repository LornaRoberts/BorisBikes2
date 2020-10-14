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
  end
  describe "#dock" do
    it "checks if docking was successful (feature test)" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq "Bike docked!"
    end
  end
  describe "#has_bike" do
    it "returns bike that is docked" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.has_bike).to eq bike
    end
  end
end
