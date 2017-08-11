feature 'Booking request' do
  before do
    navigate_to_booking
  end

  scenario 'I can navigate to Book a Space' do
    expect(page.status_code).to eq 200
    expect(page).to have_content('Book a Night')
  end

  scenario 'I can select a night and request to book' do
    expect { request_to_book }.to change(Booking, :count).by(1)
    booking = Booking.last
    expect(booking.night).to eq Date.parse('30-08-2017')
    expect(booking.status).to eq 'Requested'
    expect(booking.user_id).to eq User.first(email_address: 'john@example.com').id
    expect(booking.space.name).to eq "Maya's Inn"
    expect(current_path).to eq '/requests'
    expect(page.status_code).to eq 200
    expect(page).to have_content 'Requests'
    save_and_open_page
  end
end
