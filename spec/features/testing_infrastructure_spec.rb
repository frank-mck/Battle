feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Charlotte'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    
    save_and_open_page # will save the web page and open the browser to display it
    
    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end

  feature 'View hit points' do
    scenario 'view player 2 hit points' do
      visit('/')
      fill_in :player_1_name, with: 'Charlotte'
      fill_in :player_2_name, with: 'Mittens'
      click_button 'Submit'
      expect(page).to have_content 'Mittens [100HP]'
    end
end