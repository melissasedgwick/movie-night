feature 'Feature: Random Movie' do
  scenario 'picks a random movie from list' do
    Movies.add_movie('A movie')
    Movies.add_movie('A second movie')
    Movies.add_movie('A third movie')

    srand(1)
    visit('/')
    click_link 'Movie list'
    click_button 'Random Movie'
    random_movie = find_by_id('random_movie')
    expect(random_movie).to have_text 'A second movie'
  end
end
