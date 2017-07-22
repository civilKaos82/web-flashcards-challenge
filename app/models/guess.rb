class Guess < ApplicationRecord
  # Remember to create a migration!
  belongs_to :card
  belongs_to :round

  #find the right card
  #new instance of guess

  def correct?
    if self.guess == Card.find(self.card_id).response && !self.first_time_correct
      self.ever_correct = true
    else
      self.ever_correct = false
    end
  end

  def first_correct?
    if self.correct? && Card.find(self.card_id).correct_guess == nil
      self.first_time_correct = true
      return true
    end
    false
  end

end




























  # def self.first_correct?(form_guess, card_id)
  #   if self.correct?(form_guess, card_id) && Card.find_by({id: card_id, correct_guess: nil})
  #     return true
  #   end
  #   false
  # end

  # def correct?(form_guess, card_id)
  #   if form_guess == Card.find(card_id).response && !self.first_time_correct
  #     self.ever_correct = true
  #   else
  #     self.ever_correct = false
  #   end
  # end
