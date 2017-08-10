module BookingHelper
  def navigate_to_booking
    sign_up
    list_space
    visit('/bookings') #Replace this with click_on 'Book' once the button works
  end
end
