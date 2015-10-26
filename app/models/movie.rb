class Movie < ActiveRecord::Base
  has_many :movies_locations, dependent: :destroy
  has_many :locations, through: :movies_locations

  def make_json
    { "id" => id, "movie_title" => title }
  end
end
