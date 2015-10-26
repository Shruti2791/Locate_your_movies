class Location < ActiveRecord::Base
  has_many :movies_locations, dependent: :destroy
  has_many :movies, through: :movies_locations

  def make_json
    { "id" => id, "location_name" => name }
  end

end
