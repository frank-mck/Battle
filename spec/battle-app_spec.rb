feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    visit('/attack')
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end