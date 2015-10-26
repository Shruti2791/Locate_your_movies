class MoviesController < ApplicationController

  before_action :load_movie, only: [:locations]

  def locations
    hash = {}
    hash[@movie.title] = @movie.locations.map(&:make_json)
    render json: hash
  end

  def ids
    render json: Movie.all.to_json(only: [:id, :title])
  end

  private
    def load_movie
      render json: {error: 'No movie found'} unless @movie = Movie.where(id: params[:id]).first
    end
end

