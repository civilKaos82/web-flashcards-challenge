require 'faker'

User.delete_all
Card.delete_all
Deck.delete_all
Round.delete_all
Guess.delete_all

Deck.new({
  :name => "addition"
  })

Deck.new({
  :name => "subtraction"
  })

Deck.new({
  :name => "multiplication"
  })

20.times do
  first_number = rand(1..10)
  second_number = rand(1..10)
  Card.new({
  :prompt => "#{first_number} + #{second_number}",
  :response => first_number + second_number,
  :deck_id => 1
    })
end

20.times do
  first_number = rand(1..10)
  second_number = rand(1..10)
  Card.new({
  :prompt => "#{first_number} - #{second_number}",
  :response => first_number - second_number,
  :deck_id => 2
    })
end

20.times do
  first_number = rand(1..10)
  second_number = rand(1..10)
  Card.new({
  :prompt => "#{first_number} * #{second_number}",
  :response => first_number * second_number,
  :deck_id => 3
    })
end

User.new({
  :username => "tylerlovespikachu64",
  :password => "password"
  })

User.new({
  :username => "rickythewhalelion",
  :password => "password"
  })

User.new({
  :username => "bondingnightplanner",
  :password => "jk"
  })

User.new({
  :username => "donutgourmand",
  :password => "jk"
  })
