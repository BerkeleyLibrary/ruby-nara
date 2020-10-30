require 'simplecov-rcov'

SimpleCov.start 'rails' do
  add_filter %w( /app/channels/ /bin/ /db/  /lib/)
  add_filter 'vendor'
  coverage_dir 'tmp/rcov'
  formatter SimpleCov::Formatter::RcovFormatter
  minimum_coverage 100
end
