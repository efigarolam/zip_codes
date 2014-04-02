require "spec_helper"

describe Zipcode do
  let(:zipcode) { create(:zipcode) }

  it { expect(zipcode).to respond_to(:name) }
  it { expect(zipcode).to be_valid }

  describe "don't allow to save invalid records when" do
    it "is nil the name" do
      zipcode.name = nil
      expect(zipcode).to_not be_valid
    end
  end
end