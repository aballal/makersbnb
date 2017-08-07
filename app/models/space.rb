# Data mapper class corresponding to table 'spaces'
class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :price_per_night, Decimal, scale: 2
  property :available_from, Date
  property :available_to, Date
end
