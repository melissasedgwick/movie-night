require 'movies'

describe Movies do

  describe '#all' do
    it 'returns a list of movies' do
      movie_list = Movies.all
      expect(movie_list).to include('Rush Hour')
      expect(movie_list).to include('Pulp Fiction')
      expect(movie_list).to include('Incidious')
    end
  end

end
