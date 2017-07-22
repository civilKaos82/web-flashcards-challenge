class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :decks, table_name: :rounds
  end
end
