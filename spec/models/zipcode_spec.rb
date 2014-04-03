require "spec_helper"

describe Zipcode do
  let(:zipcode) { create(:zipcode) }

  it { expect(zipcode).to respond_to(:name) }
  it { expect(zipcode).to have_many(:coordinates) }
  it { expect(zipcode).to have_many(:coordinates).dependent(:destroy) }
  it { expect(zipcode).to be_valid }

  describe "#name validation" do
    it "fails with nil value" do
      zipcode.name = nil
      expect(zipcode).to_not be_valid
    end
  end
end
