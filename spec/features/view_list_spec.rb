feature 'Feature: Viewing movie list' do
  scenario 'returns a list of movies' do
    visit('/')
    click_link 'Movie list'
    expect(page).to have_content 'Rush Hour'
    expect(page).to have_content 'Pulp Fiction'
    expect(page).to have_content 'Incidious'
  end
end
