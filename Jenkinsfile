// @see https://git.lib.berkeley.edu/ops/jenkins-workflow-scripts/-/blob/master/vars/dockerComposePipeline.groovy
dockerComposePipeline(
  stack: [template: 'mariadb'],
  commands: ['rake setup', 'rake'],
  artifacts: [junit: 'tmp/**/*.xml',
              brakeman: 'tmp/brakeman.json',
              html: ['Code Coverage': 'tmp/rcov',
                     'RuboCop': 'tmp/rubocop']])
