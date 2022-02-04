feature 'Testing infastructure' do 

  # scenario 'Can run the battle app' do 
  #   visit('/')
  #   expect(page).to have_content 'vs.'
  # end

  scenario 'user can fill in name on form' do 
    sign_in_and_play
    expect(page).to have_content 'eden vs. luce'
  end


end