module UserHelpers
  def sign_up(email_address: 'jane@example.com',
            password: 'oranges!',
            password_confirmation: 'oranges!')
    visit('/users/new')
    fill_in 'email_address', with: email_address
    fill_in 'password', with: password
    fill_in 'password_confirmation', with: password_confirmation
    click_button 'Sign Up'
  end

  def log_in(email_address: 'jane@example.com', password: 'oranges!')
    visit('/')
    click_on 'Log In'
    fill_in 'email_address', with: email_address
    fill_in 'password', with: password
    click_button 'Log In'
  end
end
