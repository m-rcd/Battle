require 'spec_helper'
require './app'

RSpec.feature "Entering player names" do
  scenario "Players enter their names at the beginning" do
    sign_in_and_play
    expect(page).to have_content('Marianne vs. Cristina')
  end
end

RSpec.feature "View player 2 score" do
  scenario "display score" do
    sign_in_and_play
    expect(page).to have_content('Cristina HP: 60')
  end
end

RSpec.feature 'attack player 2' do
  scenario 'get confirmation' do
    sign_in_and_play
    click_button 'attack player2'
    expect(page).to have_content('Marianne attacked Cristina')
  end

  scenario "reduce player 2's HP by 10" do
    sign_in_and_play
    click_button 'attack player2'
    expect(page).to have_content('Marianne HP: 100 vs. Cristina HP: 90')
  end
end
