require 'simplecov-rcov'

SimpleCov.start 'rails' do
  add_filter %w( /app/channels/ /bin/ /db/ )
  add_filter 'vendor'
  add_filter 'docker.rb'
  coverage_dir 'artifacts'
  formatter SimpleCov::Formatter::RcovFormatter
  minimum_coverage 100
end
