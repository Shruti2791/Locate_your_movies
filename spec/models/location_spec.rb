require 'rails_helper'

describe Location do
  fixtures :locations

  it { should have_many(:movies_locations) }
  it { should have_many(:movies).through(:movies_locations) }

  context '#make_json' do
    before do
      @location = locations(:location1)
    end

    it 'should return hash for location object' do
      expect(@location.make_json).to eq({ "id" => @location.id, "location_name" => "Delhi" })
    end
  end

end
