require './lib/database_connection'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('movie_night_test')
else
  DatabaseConnection.setup('movie_night')
end
