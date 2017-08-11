feature 'Logging out' do
  scenario 'A user can log out' do
    sign_up
    log_in
    expect(current_path).to eq '/spaces'
    expect(page).to have_content 'Welcome, jane@example.com'
    click_on 'Log Out'
    expect(current_path).to eq '/users/new'
    expect(page).not_to have_content 'Welcome, jane@example.com'
    expect(page).to have_content 'Goodbye!'
  end
end
