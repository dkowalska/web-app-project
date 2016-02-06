class MoviesController < ApplicationController
  #before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    if params[:title] || params[:genre]
      @movies = Movie.search(params[:title], params[:genre]).all
    else
      @movies = Movie.order("created_at DESC")
    end
  end
  
  def self.search(search_title, search_genre) 
    return scoped unless search_title.present? || search_genre.present?
    where(['project_title LIKE ? AND genre LIKE ?', "%#{search_title}%", "%#{search_genre}%"])
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
  end

end
