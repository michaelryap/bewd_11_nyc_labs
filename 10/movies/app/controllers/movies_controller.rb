class MoviesController < ApplicationController
  def index
     @movies = Movie.search_for(params[:q])
    # @movies = Movie.all
  end

  def show
      @movie = Movie.find_by id: params[:id]
  end
end
