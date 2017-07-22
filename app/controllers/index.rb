get '/' do
  @decks = Deck.all
  erb :'/decks/index'
end

get '/deck/:deck_id' do
   @cards = Card.where({:deck_id => params[:deck_id], :correct_guess => nil})
   @card = @cards.sample
  erb :'/decks/show'
end

post '/deck' do
  @guess = Guess.create({:guess => params[:form_guess], :card_id => params[:card_id]})
  if @guess.ever_correct || @guess.first_time_correct
    Card.find_by({id: @guess.card_id}).correct_guess = true
  end

  redirect "/deck/#{params[:deck_id]}"
end
