feature 'Signing Up' do
  scenario 'A new user can sign up to use MakersBnB' do
    expect { sign_up }.to change(User, :count).by(1)
    user = User.last
    expect(user.email_address).to eq('jane@example.com')
    expect(current_path).to eq '/spaces'
    expect(page).to have_content('Book a Space')
  end
end
