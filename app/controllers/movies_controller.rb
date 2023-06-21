class MoviesController < ApplicationController
  wrap_parameters format:[]
  
  def index
    movies = Movie.all
    render json: movies
  end

  # def create
  #   movie = Movie.create(movie_params)
  #   render json: movie, except: [:created_at, :updated_at], status: :created
  # end


  private
  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
