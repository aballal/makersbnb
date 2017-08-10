# Data mapper class corresponding to bookings table
class Booking
  include DataMapper::Resource

  property :id, Serial
  property :night, Date
  property :status, String

  belongs_to :user, require: true
  belongs_to :space, required: true
end
