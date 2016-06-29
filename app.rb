require('sinatra')
require('sinatra/reloader')
require('./lib/roshambo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  @win = params.fetch('player_one').beats?(params.fetch('player_two'))
  if @win = true
    @winner = 'Player One'
  else
    @winner = 'Player Two'
  end
  erb(:winner)
end
