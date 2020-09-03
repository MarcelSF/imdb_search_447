class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @movies = Movie.global_search(params[:query])
    else
      @movies = Movie.all
    end
  end
end
