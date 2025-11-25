# frozen_string_literal:true

require 'rails_helper'

def generate_test_object
  NaraCasefile.create(
    Case_ID: 1111,
    ID: 2,
    BOXNUMBER: 'BOXNUMBER',
    LASTNAME: 'LASTNAME',
    FIRSTNAME: 'FIRSTNAME'
  )
end

# rubocop:disable RSpec/BeforeAfterAll
RSpec.configure do |config|
  config.before(:all) do
    generate_test_object
  end
  config.after(:all) do
    NaraCasefile.destroy(1111)
  end
end
# rubocop:enable RSpec/BeforeAfterAll

RSpec.describe 'NARA search', type: :feature do
  context 'when navigating search results' do
    it 'returns a header search' do
      visit '/searchcase/search'
      expect(page).to have_content('The Early Arrivals Records Search (EARS)')
    end

    scenario 'Root re-directs to search' do
      visit '/'
      expect(page).to have_content('The Early Arrivals Records Search (EARS)')
    end

    scenario 'empty search shows all results' do # rubocop:disable RSpec/ExampleLength
      visit '/'
      click_button 'Search'
      expect(page).to have_content(
        'Last Name First Name Middle Name Age Gender ' \
        'Port Date Ship Destination LASTNAME FIRSTNAME'
      )
    end

    scenario 'Search query yields intended results' do
      visit '/'
      find('#q').set('DOG')
      click_button 'Search'
      expect(page).to have_content('query returned 0 results')
    end
  end

  context 'when viewing record display', type: :feature do
    scenario 'Display Shows intended view' do
      visit '/'
      click_button 'Search'
      first(:link, 'LASTNAME').click
      expect(page).to have_content('Record details below')
    end

    scenario 'Display Shows intended footer' do
      visit '/'
      click_button 'Search'
      first(:link, 'LASTNAME').click
      expect(page).to have_content('© University of California Regents. All rights reserved')
    end
  end
end
