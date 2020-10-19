ENV['RAILS_ENV'] = 'test' unless ENV['RAILS_ENV']
require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'capybara/rspec'

def set_up
    Rails.application.load_seed
end