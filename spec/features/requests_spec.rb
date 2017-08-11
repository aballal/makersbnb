feature 'Requests' do
  before do
    navigate_to_requests
  end

  scenario 'A user can see a list of requests made and received' do
    expect(current_path).to eq '/requests'
    expect(page).to have_content 'Requests'
    expect(page).to have_content 'Welcome, john@example.com'
    # Within requests made check for rows as a guest
    # Within requests received check for rows as a host
  end
end
