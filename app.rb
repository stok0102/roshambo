require('sinatra')
require('sinatra/reloader')
require('./lib/roshambo')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  @win = params.fetch('player_one').beats?(params.fetch('player_two'))
  if @win == true
    @winner = 'Player One'
  elsif @win == false
    @winner = 'Player Two'
  end
  binding.pry
  erb(:winner)
end
