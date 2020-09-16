require 'spec_helper'

RSpec.describe 'Navigate NARA search', type: :feature do
  scenario 'search' do
    visit '/searchcase/search'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
  end
end