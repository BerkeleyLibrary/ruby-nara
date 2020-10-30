@Library('jenkins-workflow-scripts@debugging-shared-compose-stacks') _

dockerComposePipeline(
  stack: [template: 'mariadb'],
  commands: ['sleep 10', 'rake'],
  artifacts: [
    junit: 'tmp/junit/*.xml',
    brakeman: 'tmp/brakeman.json',
    html: [
      'Code Coverage': 'tmp/rcov',
      'RuboCop': 'tmp/rubocop',
    ],
  ],
)
