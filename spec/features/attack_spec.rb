require './app.rb'

feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Joe attacked Mon')
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Mon: 60HP'
    expect(page).to have_content 'Mon: 50HP'
  end
end