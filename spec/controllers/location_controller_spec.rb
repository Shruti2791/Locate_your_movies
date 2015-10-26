require 'rails_helper'

describe LocationsController do
  fixtures :movies, :locations, :movies_locations

  context '#movies' do
    before do
      @location1 = locations(:location1)
      @location_id = @location1.id
    end

    it 'get movies when valid id given' do
      get :movies, id: @location_id
      expect(response.body).to eq('{"Delhi":[{"id":516738445,"movie_title":"Lord Of The Rings"},{"id":130391097,"movie_title":"The Network"}]}')
    end

    it 'get movies when invalid id given' do
      get :movies, id: 17688
      expect(response.body).to eq('{"error":"No Location found"}')
    end
  end

  context '#ids' do

    it 'should give all the location ids and names in hash' do
      get :ids
      expect(response.body).to eq('[{"id":255093256,"name":"Delhi"},{"id":373111740,"name":"Kolkata"}]')
    end
  end
end
