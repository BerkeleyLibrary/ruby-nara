# NARA casefiles web database

Rails web app for viewing the NARA case files database. This application runs on Docker Swarm.

The Nara database app can be found under the archived Chinese immigration website at <https://web.archive.org/web/20220124061848/https://bancroft.berkeley.edu/collections/chinese-immigration-to-the-united-states-1884-1944/index.html>. Alternatively, you can visit the website at https://nara.lib.berkeley.edu/

## Local development and CI

Local development and CI is handled by Docker Compose. The app requires a custom MariaDB configuration variable (see [`docker-compose.yml`](docker-compose.yml)). This should get automatically loaded as you bring the container up locally, but this setting needs to be deployed to the Swarm configuration.

By default, Docker Compose will load sample data given a file in `db/dumps`. In CI, no sample data is loaded.

## Testing

Nara uses a combination of Rspec and Capybara for its test suites. To run a suite from the command line, run 'rspec' from the projects root directory.

## SimpleCov

SimpleCov is an analytics tool that runs against the applications code. It helps to maintain health of the app, as well as ensure that testing is thorough. You can generate a new coverage chart by running the rspec test suite via 'rspec'. The report will be generated under the artifacts directory. Run the index.html file in a browser to get a high level view of the report.

## RuboCop-Rails

RuboCop-Rails is a gem used to analyze code style, geared towards Rails standards. It will point out notable code smells or potentially problematic code blocks and recommend changes. You can run the Rails cop with the following command:

```
rubocop --require rubocop-rails
```

