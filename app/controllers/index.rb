get '/' do
  @decks = Deck.all
  erb :'/decks/index'
end

before '/deck/:deck_id/card/*' do
 @cards = Card.where({:deck_id => params[:deck_id], :correct_guess => nil})
 @card = @cards.sample
end

get '/deck/:deck_id/card/:card_id' do
  @cards = Card.where(params[:id])
  @all_cards = Card.all
  erb :'/decks/show'
end

post '/guess' do
  p params
  @guess = Guess.create({:guess => params[:form_guess], :card_id => params[:card_id]})
  p @guess.first_correct?
  p @guess.correct?

  erb :'/decks/show'
end
