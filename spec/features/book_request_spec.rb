feature 'Booking request' do
  before do
    navigate_to_booking
  end

  scenario 'I can navigate to Book a Space' do
    expect(page.status_code).to eq 200
  end

  scenario 'I can select a night and request to book' do
    expect { request_to_book }.to change(Booking, :count).by(1)
  end
end
