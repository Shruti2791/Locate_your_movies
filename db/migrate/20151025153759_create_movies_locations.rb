class CreateMoviesLocations < ActiveRecord::Migration
  def change
    create_table :movies_locations do |t|
      t.integer :movie_id
      t.integer :location_id
      t.timestamps
    end
  end
end
