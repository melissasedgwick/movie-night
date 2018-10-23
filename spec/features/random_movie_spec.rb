feature 'Feature: Random Movie' do
  scenario 'picks a random movie from list' do
    srand(1)
    visit('/')
    click_link 'Movie list'
    click_button 'Random Movie'
    random_movie = find_by_id('random_movie')
    expect(random_movie).to have_text 'Incidious'
  end
end
