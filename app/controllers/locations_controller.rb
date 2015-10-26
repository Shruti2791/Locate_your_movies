class LocationsController < ApplicationController
  before_action :load_location, only: [:movies]

  def movies
    hash = {}
    hash[@location.name] = @location.movies.map(&:make_json)
    render json: hash
  end

  def ids
    render json: Location.all.to_json(only: [:id, :name])
  end

  private
    def load_location
      render json: {error: 'No Location found'} unless @location = Location.where(id: params[:id]).first
    end
end
