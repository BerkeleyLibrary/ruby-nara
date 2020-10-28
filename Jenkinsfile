dockerComposePipeline(
  stack: [template: "mariadb"],
  commands: ['sleep 10', 'env RAILS_ENV=test rake db:setup db:schema:load'],
  artifacts: [html: ['Code Coverage': 'tmp/rcov',
                     'RuboCop': 'tmp/rubocop']])