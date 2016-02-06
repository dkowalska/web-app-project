class MoviesController < ApplicationController
  #before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    if params[:search]
      @movies = Movie.search(params[:search]).order("created_at DESC")
    else
      @movies = Movie.order("created_at DESC")
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
  end

end
