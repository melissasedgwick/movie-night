require 'database_helpers'
require 'movies'

describe Movies do

  subject(:movie) { described_class.new }

  describe '#random_movie' do
    it 'returns a random movie' do
      Movies.add_movie('A movie')
      Movies.add_movie('A second movie')
      Movies.add_movie('A third movie')

      srand(1)
      expect(Movies.random_movie).to eq 'A second movie'
    end
  end

  describe '#add_movie' do
    it 'adds a movie to the list' do
      movie = Movies.add_movie('Notebook')
      result = Movies.all
      
      expect(result[-1].title).to eq 'Notebook'
    end
  end

  describe '#all' do
    it 'returns a list of movies' do
      Movies.add_movie('Rush Hour')
      Movies.add_movie('Pulp Fiction')
      movies = Movies.all

      expect(movies.length).to eq 2
      expect(movies[0]).to be_a Movies
      expect(movies[0].title).to eq 'Rush Hour'
    end
  end

end
