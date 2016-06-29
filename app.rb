require('sinatra')
require('sinatra/reloader')
require('./lib/roshambo')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/form') do
  @playerOne = params.fetch('playerOne')
  @playerTwo = params.fetch('playerTwo')
  if @playerOne == true
    erb(:form_one)
  elsif @playerTwo == true
    erb(:form_two)
  end
end

get('/winner') do
  @players = params.fetch('player')
  if @players == 'one'
    @computer_move = ('player_one').computer()
    @win = params.fetch('player_one').beats?(@computer_move)
  elsif @players == 'two'
    @win = params.fetch('player_one').beats?(params.fetch('player_two'))
  end
  if @win == true
    @winner = 'Player One'
  elsif @win == false
    @winner = 'Player Two'
  end
  erb(:winner)
end
