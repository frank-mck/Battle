feature 'Attack another player' do
  scenario 'get confirmation of attack' do
    sign_in_and_play
    visit('/attack')
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end