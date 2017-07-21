require 'faker'

User.delete_all
Card.delete_all
Deck.delete_all
Round.delete_all
Guess.delete_all

Deck.create!({
  :name => "addition"
  })

Deck.create!({
  :name => "subtraction"
  })

Deck.create!({
  :name => "multiplication"
  })

20.times do
  first_number = rand(1..10)
  second_number = rand(1..10)

  Card.create!({
  :prompt => "#{first_number} + #{second_number}",
  :response => first_number + second_number,
  :deck_id => 1
    })
end

20.times do
  first_number = rand(1..10)
  second_number = rand(1..10)
  Card.create!({
  :prompt => "#{first_number} - #{second_number}",
  :response => first_number - second_number,
  :deck_id => 2
    })
end

20.times do
  first_number = rand(1..10)
  second_number = rand(1..10)
  Card.create!({
  :prompt => "#{first_number} * #{second_number}",
  :response => first_number * second_number,
  :deck_id => 3
    })
end

user1 = User.new({
  :username => "tylerlovespikachu64"
  })
user1.password = "password"
user1.save!

user2 = User.create!({
  :username => "rickythewhalelion"
  })
user2.password = "password"
user2.save!

user3 = User.create!({
  :username => "bondingnightplanner"
  })
user3.password = "password"
user3.save!

user4 = User.create!({
  :username => "donutgourmand"
  })
user4.password = "password"
user4.save!
