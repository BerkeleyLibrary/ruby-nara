# NARA casefiles web database

Rails web app for viewing the NARA case files database. This application runs on VM154 using port 3001. The database itself runs on mysql.lib.berkeley.edu.

The Nara database app can be found under the existing Chinese immigration website at https://bancroft.berkeley.edu/collections/chinese-immigration-to-the-united-states-1884-1944/ alternatively, you can visit the website at https://nara.lib.berkeley.edu/

## Testing

Nara uses a combination of Rspec and Capybara, for it's test suites. To run a suite from the command line, run 'rspec' from the projects root directory.

## SimpleCov

SimpleCov is an analytics tool that runs against the applications code. It helps to maintain health of the app, as well as ensure that testing is thorough. You can generate a new coverage chart by running the rspec test suite via 'rspec'. The report will be generated under the artifacts directory. Run the index.html file in a browser to get a high level view of the report.

## RuboCop-Rails

RuboCop-Rails is a gem used to analyze code style, geared towards Rails standards. It will point out notable code smells or potentially problematic code blocks and recommend changes. You can run the Rails cop with the following command:

```
rubocop --require rubocop-rails
```

