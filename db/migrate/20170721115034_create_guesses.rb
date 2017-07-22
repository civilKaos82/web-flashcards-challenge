class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.string :guess
      t.boolean :first_time_correct
      t.boolean :ever_correct
      t.belongs_to :card, index: true
      t.belongs_to :round, index: true

      t.timestamps
    end
  end
end
