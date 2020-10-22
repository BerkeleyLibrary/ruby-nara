# frozen_string_literal:true

require 'spec_helper'

RSpec.describe 'Navigate NARA search', type: :feature do
  before(:all) do
    NARA_CaseFiles = NaraCasefile.create(
      Case_ID: 1111,
      ID: 2,
      BOXNUMBER: 'BOXNUMBER',
      LASTNAME: 'LASTNAME',
      FIRSTNAME: 'FIRSTNAME'
    )
  end

  after(:all) do
    NaraCasefile.destroy(1111)
  end

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
    click_button 'Search'
    expect(page).to have_content(
      'Last Name First Name Middle Name Age Gender ' \
      'Port Date Ship Destination LASTNAME FIRSTNAME'
    )
  end

  scenario 'Display Shows intended view' do
    visit '/'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
    click_button 'Search'
    expect(page).to have_content(
      'Last Name First Name Middle Name Age Gender ' \
       'Port Date Ship Destination LASTNAME FIRSTNAME'
    )
    first(:link, 'LASTNAME').click
    expect(page).to have_content('Record details below')
  end

  scenario 'Display Shows intended footer' do
    visit '/'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
    click_button 'Search'
    expect(page).to have_content(
      'Last Name First Name Middle Name Age Gender ' \
      'Port Date Ship Destination LASTNAME FIRSTNAME'
    )
    first(:link, 'LASTNAME').click
    expect(page).to have_content('© University of California Regents. All rights reserved')
  end

  scenario 'Display Shows intended footer' do
    visit '/'
    expect(page).to have_content('The Early Arrivals Records Search (EARS)')
    find('#q').set('DOG')
    click_button 'Search'
    expect(page).to have_content('query returned 0 results')
  end
end
