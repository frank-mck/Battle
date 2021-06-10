feature 'Attack another player' do
  scenario 'get confirmation of attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end