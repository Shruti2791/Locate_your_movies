require 'rails_helper'

describe MoviesController do
  fixtures :movies, :locations, :movies_locations

  context '#locationss' do
    before do
      @movie1 = movies(:movie1)
      @movie_id = @movie1.id
    end

    it 'get movies when valid id given' do
      get :locations, id: @movie_id
      expect(response.body).to eq('{"Lord Of The Rings":[{"id":255093256,"location_name":"Delhi"},{"id":373111740,"location_name":"Kolkata"}]}')
    end

    it 'get movies when invalid id given' do
      get :locations, id: 17688
      expect(response.body).to eq('{"error":"No movie found"}')
    end
  end

  context '#ids' do

    it 'should give all the location ids and names in hash' do
      get :ids
      expect(response.body).to eq('[{"id":130391097,"title":"The Network"},{"id":516738445,"title":"Lord Of The Rings"}]')
    end
  end
end
