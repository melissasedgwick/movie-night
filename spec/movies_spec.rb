require 'movies'

describe Movies do

  subject(:movie) { described_class.new }

  describe '#all' do
    it 'returns a list of movies' do
      movie_list = movie.all
      expect(movie_list).to include('Rush Hour')
      expect(movie_list).to include('Pulp Fiction')
      expect(movie_list).to include('Incidious')
    end
  end

  describe '#random_movie' do
    it 'returns a random movie' do
      srand(1)
      expect(movie.random_movie).to eq('Incidious')
    end
  end

end
