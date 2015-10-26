require 'rails_helper'

describe Movie do
  fixtures :movies

  it { should have_many(:movies_locations) }
  it { should have_many(:locations).through(:movies_locations) }

  context '#make_json' do
    before do
      @movie = movies(:movie2)
    end

    it 'should return hash for movie object' do
      expect(@movie.make_json).to eq({ "id" => @movie.id, "movie_title" => "The Network" })
    end
  end

end
