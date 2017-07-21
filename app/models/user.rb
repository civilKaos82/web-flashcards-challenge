class User < ApplicationRecord
  # Remember to create a migration!
  # has_many :decks
  has_many :rounds

  validates :username, uniqueness: {case_sensitive: false}

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
