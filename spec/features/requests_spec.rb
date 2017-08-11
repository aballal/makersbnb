feature 'Requests' do
  before do
    navigate_to_requests
  end

  scenario 'A user can see a list of requests made' do
    expect(current_path).to eq '/requests'
    expect(page).to have_content 'Requests'
    expect(page).to have_content 'Welcome, john@example.com'
    # Within requests made check for rows as a guest
  end

  scenario 'A user can see a list of requests received' do
    log_in
    click_on 'Requests'
    expect(current_path).to eq '/requests'
    expect(page).to have_content 'Requests'
    expect(page).to have_content 'Welcome, jane@example.com'
    # Within requests received check for rows as a host
  end
end
