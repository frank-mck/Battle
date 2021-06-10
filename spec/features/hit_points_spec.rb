
feature 'Attacking' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
  
  scenario 'reduce players HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end

