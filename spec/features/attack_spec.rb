feature 'Attacking' do
  scenario 'get confirmation of attack from both players' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Charlotte'
  end

scenario 'reduce Player 2 HP by 10' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'OK'
  expect(page).not_to have_content 'Mittens: 60HP'
  expect(page).to have_content 'Mittens: 50HP'
end

scenario 'reduce Player 1 HP by 10' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'OK'
  expect(page).not_to have_content 'Mittens: 60HP'
  expect(page).to have_content 'Mittens: 50HP'
end
end