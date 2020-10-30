dockerComposePipeline(
  stack: [
    template: "mariadb"
  ],
  commands: [
    'sleep 10',
    'env RAILS_ENV=test db:setup db:schema:load rake',
  ],
  artifacts: [
    junit: 'tmp/junit/*.xml',
    brakeman: 'tmp/brakeman.json',
    html: [
      'Code Coverage': 'tmp/rcov',
      'RuboCop': 'tmp/rubocop',
    ],
  ],
)
