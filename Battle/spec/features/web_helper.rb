

def sign_in_and_play
  visit('/')
  fill_in :player1, with: "eden"
  fill_in :player2, with: "luce"
  click_button 'Battle'
end