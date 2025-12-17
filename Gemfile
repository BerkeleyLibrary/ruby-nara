source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.0'

gem 'amazing_print', '~> 1.1'
gem 'berkeley_library-docker'
gem 'berkeley_library-logging'
gem 'bootstrap-sass'
gem 'bundler-audit'
gem 'coffee-rails'
gem 'font-awesome-rails'
gem 'jbuilder', '~> 2.7'
gem 'jquery-rails', '~> 4.4'
gem 'lograge', '~> 0.11'
gem 'mysql2', '~> 0.5.4'
gem 'nokogiri', '~> 1.18'
gem 'okcomputer', '~> 1.19'
gem 'ougai', '~> 1.8'
gem 'puma', '~> 6.6.1'
gem 'rails', '~> 8.0.0'
gem 'rake'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.4.3'
gem 'will_paginate'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 8.0'
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'rubocop', '~> 1.81.6', require: false
  gem 'rubocop-rails', '~> 2.34.1', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'brakeman', '~> 7.0'
  gem 'capybara', '>= 2.15'
  gem 'rspec_junit_formatter', '~> 0.4.1'
  gem 'selenium-webdriver'
end
