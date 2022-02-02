feature 'Testing infastructure' do 

  scenario 'Can run the battle app' do 
    visit('/')
    expect(page).to have_content 'vs.'
  end

  scenario 'user can fill in name on form' do 
    visit('/')
    fill_in :player1, with: "eden"
    fill_in :player2, with: "luce"
    click_button 'Battle'
    expect(page).to have_content 'eden vs. luce'



end
end