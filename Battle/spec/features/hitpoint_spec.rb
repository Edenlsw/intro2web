feature 'View hit points' do
  scenario 'user can view player 2 hit points' do 
    sign_in_and_play
    expect(page).to have_content "luce 20"


  end
end