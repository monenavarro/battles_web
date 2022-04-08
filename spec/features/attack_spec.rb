feature 'Attacking' do
  scenario 'attack Player 2' do
    visit('/')
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Joe attacked Mon'
  end
end