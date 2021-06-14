feature 'Attacking' do
  scenario 'attack Player 1 then player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
    click_link 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Charlotte'
  end
end