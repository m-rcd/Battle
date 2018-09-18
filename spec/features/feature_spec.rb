require 'spec_helper'
require './app'

RSpec.feature "Testing infrastructure" do
  scenario "starting homepage" do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end
end
