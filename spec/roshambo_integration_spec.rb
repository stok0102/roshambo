require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the beats case path', {:type => :feature}) do
  it('compares player_one move with player_two and declares winner') do
    visit('/')
    fill_in('player_one', :with => 'rock')
    fill_in('player_two', :with => 'scissors')
    click_button('Play')
    save_and_open_page
    expect(page).to have_content('Player One')
  end
end
