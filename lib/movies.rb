class Movies

  attr_reader :movie_choice, :all_movies

  def initialize
    @all_movies = ['Rush Hour',
    'Incidious',
    'Pulp Fiction']
    @movie_choice = ''
  end

  def self.create
    @movies = Movies.new
  end

  def self.instance
    @movies
  end

  def random_movie
    @movie_choice = all_movies.sample
  end

end
