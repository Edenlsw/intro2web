feature 'Attack ' do 
  scenario "attacking player 2" do
    sign_in_and_play
    click_button 'ATTACK!!'
    expect(page).to have_content 'eden attacked luce'
    

  end

end