require 'spec_helper'

RSpec.describe 'Navigate NARA search', type: :feature do
  scenario 'search' do
    visit '/searchcase/search'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
  end

  scenario 'Root re-directs to search' do
    visit '/'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
  end

  scenario 'empty search shows all results' do
    visit '/'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
    click_button "Search"
    expect(page).to have_content('LastName FirstName MiddleName Age Gender Ship Port Date Destination')
  end

  scenario 'Display Shows intended view' do
    visit '/'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
    click_button "Search"
    expect(page).to have_content('LastName FirstName MiddleName Age Gender Ship Port Date Destination')
   first(:link, "Display").click
  end
end