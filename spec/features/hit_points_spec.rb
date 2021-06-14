
feature 'Attacking' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
  
  scenario 'view player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Charlotte: 60HP'
  end
end
