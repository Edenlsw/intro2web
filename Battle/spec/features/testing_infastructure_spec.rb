feature 'Testing infastructure' do 

  scenario 'Can run the battle app' do 
    visit('/')
    expect(page).to have_content 'Testing infastructure working!'
  end

  scenario 'user can fill in name on form' do 
    visit('/')
    expect(page).to have_content 'Eden', 'Luce'



end