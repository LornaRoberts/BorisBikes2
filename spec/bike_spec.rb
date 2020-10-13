require "bike"
RSpec.describe Bike do
  subject = Bike.new
  describe "#working" do
    #it "responds true to working?" do
    #  expect(subject.working?).to eq true
  #  end

    it "responds to working?" do
      expect(subject.respond_to?(working?)).to eq true
    end
  end

end
