dockerComposePipeline(
  stack: [template: 'mariadb'],
  commands: [
    'sleep 10',
    'rake setup',
    [
      'rake brakeman',
      'rake bundle:audit',
      'rake rubocop',
      'rake spec',
    ],
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
