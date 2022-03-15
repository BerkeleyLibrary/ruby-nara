dockerComposePipeline(
  stack: [template: 'mariadb'],
  commands: [
    [
      [exec: 'rake check RAILS_ENV=test'],
      'rake rubocop',
      'rake brakeman',
      'rake bundle:audit',
    ],
  ],
  artifacts: [
    junit   : 'artifacts/rspec/**/*.xml',
    html    : [
      'Code Coverage': 'artifacts/rcov',
      'RuboCop'      : 'artifacts/rubocop',
      'Brakeman'     : 'artifacts/brakeman',
      'ESLint'       : 'artifacts/eslint'
    ],
    raw     : 'artifacts/screenshots/**/*.png'
  ]
)
