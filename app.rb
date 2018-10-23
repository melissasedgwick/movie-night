require 'sinatra/base'
require './lib/movies'

class MovieNight < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/movie-list' do
    @movie_list = Movies.all
    erb :movie_list
  end

  run! if app_file == $0
end
