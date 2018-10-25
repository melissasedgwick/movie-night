require 'sinatra/base'
require './lib/movies'
require_relative './database_connection_setup.rb'

class MovieNight < Sinatra::Base

  before do
    @movies = Movies.all
  end

  get '/' do
    erb :index
  end

  get '/movie-list' do
    erb :movie_list
  end

  get '/get-random-movie' do
    Movies.random_movie
    redirect '/movie-list'
  end

  run! if app_file == $0
end
