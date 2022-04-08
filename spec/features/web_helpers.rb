def sign_in_and_play
    visit('/')
    fill_in :player1, with: 'Joe'
    fill_in :player2, with: 'Mon'
    click_button 'Submit'
  end