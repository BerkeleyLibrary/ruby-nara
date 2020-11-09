**NARA casefiles web database**
Rails web app for viewing NARA case files database
Runs on VM154 on port 3001.
Connects to NARA database on mysql.lib.berkeley.edu
Is linked to from http://vm136.lib.berkeley.edu/BANC/collections/chinese-immigration-to-the-united-states-1884-1944/

**Usage**
http://vm154.lib.berkeley.edu:3001/searchcase/search


**Testing:**

**Rspec:**
Nara uses a combination of Rspec and Capybara, for it's test suites. To run a suite from the command line, run 'rspec' from the projects root directory.

**SimpleCov:**
SimpleCov is an analytics tool that runs against the application code. It helps maintain health of the app, as well as ensure that testing is thorough. You can generate a new coverage chart by running the rspec test suite.

**RuboCop-Rails:**
RuboCop-Rails is a gem used to analyze code style, geared towards Rails standards. It will point out notable code smells or potentially problematic code blocks and recommend changes. You can run the Rails cop with the following command:
'''
rubocop --require rubocop-rails
'''