# NARA casefiles web database

Rails web app for viewing the NARA case files database. This application runs on Docker Swarm.

The Nara database app can be found under the archived Chinese immigration website at <https://web.archive.org/web/20220124061848/https://bancroft.berkeley.edu/collections/chinese-immigration-to-the-united-states-1884-1944/index.html>. Alternatively, you can visit the website at https://nara.lib.berkeley.edu/

## Local development

Local development and CI is handled by Docker Compose. The app requires a custom MariaDB configuration (see [`mariadb/conf.d/nara.cnf`](dmariadb/conf.d/nara.cnf)). This should get automatically loaded as you bring the container up locally, but this setting needs to be deployed to the Swarm configuration.

By default, the application does not ship with any data, but you can load some if you place a dump file in `mariadb/docker-entrypoint-initdb.d` and bring the containers up with a supplemental Compose file, e.g.

```bash
cp nara-dump.sql.gz mariadb/docker-entrypoint-initdb.d
docker compose -f docker-compose.yml -f docker-compose.dump.yml up -d
```

## Testing

Nara uses a combination of Rspec and Capybara for its test suites. To run a suite from the command line, run 'rspec' from the projects root directory.

## SimpleCov

SimpleCov is an analytics tool that runs against the applications code. It helps to maintain health of the app, as well as ensure that testing is thorough. You can generate a new coverage chart by running the rspec test suite via 'rspec'. The report will be generated under the artifacts directory. Run the index.html file in a browser to get a high level view of the report.

## RuboCop-Rails

RuboCop-Rails is a gem used to analyze code style, geared towards Rails standards. It will point out notable code smells or potentially problematic code blocks and recommend changes. You can run the Rails cop with the following command:

```
rubocop --require rubocop-rails
```

