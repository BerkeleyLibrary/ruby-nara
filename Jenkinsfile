dockerComposePipeline(
  stack: [template: "mariadb"],
  commands: ['sleep 10', 'env RAILS_ENV=test rake'],
  artifacts: [junit: 'tmp/specs.xml',
              brakeman: 'tmp/brakeman.json'])
