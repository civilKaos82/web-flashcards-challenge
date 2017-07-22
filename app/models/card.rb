class Card < ApplicationRecord
  # Remember to create a migration!
  belongs_to :deck
  has_many :guesses

  # after_initialize :set_defaults

  # private
  # def set_defaults
  #   self.correct_guess = false
  # end
end
