desc 'Setup the app, run all tests, and then teardown the app'
task ci: %w(db:create db:migrate db:seed) do
  Rake::Task['spec:all'].invoke
ensure
  Rake::Task['db:drop'].invoke
end
