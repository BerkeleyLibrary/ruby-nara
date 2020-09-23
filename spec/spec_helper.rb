ENV['RAILS_ENV'] = 'test' unless ENV['RAILS_ENV']
require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'capybara/rspec'
system "rails RAILS_ENV=test  db:drop db:create db:migrate"

