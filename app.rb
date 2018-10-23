require 'sinatra/base'

class MovieNight < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/movie-list' do
    erb :movie_list
  end

  run! if app_file == $0
end
