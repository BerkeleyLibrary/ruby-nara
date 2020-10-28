dockerComposePipeline(
  stack: [template: "mariadb"],
  commands: ['sleep 10', 'env RAILS_ENV=test rake db:setup db:schema:load; rake'],
  artifacts: [junit: 'tmp/**/*.xml',
              brakeman: 'tmp/brakeman.json',
              html: ['Code Coverage': 'tmp/rcov',
                     'RuboCop': 'tmp/rubocop']])