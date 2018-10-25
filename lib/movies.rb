require_relative 'database_connection'

class Movies

  attr_reader :title, :id

  def initialize(title:, id:)
    @title = title
    @id = id
    @movie_choice = ''
  end

  def self.movie_choice
    @movie_choice
  end

  # def self.instance
  #   @movies
  # end
  #
  # def self.connection
  #   PG.connect(dbname: 'movie_night')
  # end

  def self.random_movie
    @movie_choice = all.sample.title
  end

  def self.add_movie(title)
    result = DatabaseConnection.query("INSERT INTO movies (title) VALUES('#{title}') RETURNING id, title;")

    Movies.new(id: result[0]['id'], title: result[0]['title'])
  end

  def self.all
    result = DatabaseConnection.query("SELECT * FROM movies;")
    result.map do |movie|
      Movies.new(id: movie['id'], title: movie['title'])
    end
  end

end
