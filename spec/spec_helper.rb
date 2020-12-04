# frozen_string_literal: true

ENV['RAILS_ENV'] = 'test' unless ENV['RAILS_ENV']
if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start 'rails'
end
require 'capybara/rspec'
