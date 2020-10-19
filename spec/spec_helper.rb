ENV['RAILS_ENV'] = 'test' unless ENV['RAILS_ENV']
require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'capybara/rspec'

load "#{Rails.root}/db/seeds.rb"

def set_up
    Rails.application.load_seed
end