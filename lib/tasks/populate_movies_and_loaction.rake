require 'csv'

desc "Load Movies data in movies table"

task load_data: :environment do
  puts 'Loading data into movies, locations and index table...'

  CSV.foreach(File.join(Rails.root.join('lib', 'data', 'Film_Locations_in_San_Francisco.csv')), { headers: true, :encoding => 'ISO-8859-1' } ) do |row|
    movie = Movie.find_by(title: row[1]) || Movie.new(title: row[1])
    movie.locations << Location.find_or_create_by(name: row[2])
    movie.save!
  end

  puts 'Loading complete.'
end

