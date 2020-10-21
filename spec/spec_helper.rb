ENV['RAILS_ENV'] = 'test' unless ENV['RAILS_ENV']
if ENV['RAILS_ENV'] == 'test'
    require 'simplecov'
    SimpleCov.start 'rails'
    puts "required simplecov"
end
require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'capybara/rspec'