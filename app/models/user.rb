class User < ApplicationRecord
  # Remember to create a migration!
  # has_many :decks
  has_many :rounds

  validates :username, uniqueness: {case_sensitive: false}
end
