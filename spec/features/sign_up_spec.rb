feature 'Signing Up' do
  scenario 'A new user can sign up to use MakersBnB' do
    expect { sign_up }.to change(User, :count).by(1)
    user = User.last
    expect(user.email_address).to eq('jane@example.com')
    expect(current_path).to eq '/spaces'
    expect(page).to have_content('Book a Space')
    expect(page).to have_content('Welcome, jane@example.com')
  end

  scenario 'A new user cannot sign up without an email' do
    expect { sign_up(email_address: "") }.not_to change(User, :count)
    expect(page).to have_content "Email address must not be blank"
  end

  scenario 'A new user cannot sign up with an invalid email' do
    expect { sign_up(email_address: "jane.com") }.not_to change(User, :count)
    expect { sign_up(email_address: "jane@example") }.not_to change(User, :count)
    expect(page).to have_content "Email address has an invalid format"
  end

  scenario 'A new user cannot sign up with mismatch in passwords' do
    expect { sign_up(password_confirmation: "oranges") }
    .not_to change(User, :count)
    expect(page).to have_content "Password does not match the confirmation"
  end

  scenario 'A user cannot sign up with existing email' do
    sign_up
    expect { sign_up }.not_to change(User, :count)
    expect(page).to have_content "Email address is already taken"
  end
end
