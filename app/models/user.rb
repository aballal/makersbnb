require 'bcrypt'

# Data mapper class corresponding to table 'users'
class User
  include DataMapper::Resource

  property :id, Serial
  property :email_address, String, required: true, unique: true
  property :password_digest, Text

  validates_format_of :email_address, as: :email_address
  validates_confirmation_of :password

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
    nil
  end

  def password_confirmation=(password_confirmation)
    @password_confirmation = password_confirmation
    nil
  end

  def self.authenticate(email_address, password)
    user = first(email_address: email_address)
    user && BCrypt::Password.new(user.password_digest) == password ? user : nil
  end

  private

  attr_reader :password, :password_confirmation
end
