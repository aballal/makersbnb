feature 'Logging in' do
  before do
    sign_up
  end

  scenario 'A user can log in to MakersBnB with email and password' do
    log_in
    expect(current_path).to eq '/spaces'
    expect(page).to have_content 'Welcome, jane@example.com'
  end

  scenario 'A user cannot log in to MakersBnB with incorrect password' do
    log_in(password: 'oranges')
    expect(current_path).to eq '/sessions/new'
    expect(page).to have_content 'The email address or password is incorrect'
  end
end
