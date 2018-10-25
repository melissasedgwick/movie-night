require_relative '../lib/database_connection'

def setup_test_database

  p "Setting up test database..."

  DatabaseConnection.setup('movie_night_test')

  DatabaseConnection.query("TRUNCATE movies;")

end
