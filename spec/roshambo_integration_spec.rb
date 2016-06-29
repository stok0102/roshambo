require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the beats case path', {:type => :feature}) do
  it('compares player_one move with player_two and declares winner') do
    visit('/')
    fill_in('player_one', :with => 'rock')
    fill_in('player_two', :with => 'paper')
    click_button('Play')
    expect(page).to have_content('Player Two')
  end
end
