class Movies

  attr_reader :film_choice

  def initialize
    @all_films = ['Rush Hour',
    'Incidious',
    'Pulp Fiction']
    @film_choice = ''
  end

  def self.create
    @movies = Movies.new
  end

  def self.instance
    @movies
  end

  def all
    @all_films
  end

  def random_movie
    @film_choice = @all_films.sample
  end

end
