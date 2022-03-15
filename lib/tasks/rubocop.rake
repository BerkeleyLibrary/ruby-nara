require 'rubocop'
require 'rubocop/rake_task'

desc 'Run rubocop with HTML output'
RuboCop::RakeTask.new(:rubocop) do |cop|
  output = ENV['RUBOCOP_OUTPUT'] || 'artifacts/rubocop/index.html'
  puts "Writing RuboCop inspection report to #{output}"

  cop.verbose = false
  cop.formatters = ['html']
  cop.options = ['--out', output]
end
