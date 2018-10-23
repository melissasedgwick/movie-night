require 'sinatra/base'
require './lib/movies'

class MovieNight < Sinatra::Base

  before do
    @movies = Movies.instance
  end

  get '/' do
    @movies = Movies.create
    erb :index
  end

  get '/movie-list' do
    erb :movie_list
  end

  get '/get-random-movie' do
    @movies.random_movie
    redirect '/movie-list'
  end

  run! if app_file == $0
end
