class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :prompt
      t.string :response
      t.boolean :correct_guess
      t.belongs_to :deck, index: true

      t.timestamps
    end
  end
end
