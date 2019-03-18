# NARA casefiles web database

Rails web app for viewing NARA case files database  
Runs on VM154 on port 3001.  
Connects to NARA database on mysql.lib.berkeley.edu

Is linked to from http://vm136.lib.berkeley.edu/BANC/collections/chinese-immigration-to-the-united-states-1884-1944/

# Usage
http://vm154.lib.berkeley.edu:3001/searchcase/search

 Startup command
/home/nara/.rvm/rubies/ruby-2.2.1/bin/ruby bin/rails s -p3001 -b0.0.0.0 -d -e production

# Dependencies
Requires  Rails 4.2.3  
Requires  Ruby ruby 2.2.1p85  

uses Jetty "installed by Rails automatically when App is created"

Both Ruby and Rails are installed in nara user home directory  
Nara rails app is installed in /data/NARA

# External dependencies
Requires MySql (runs on mysql.lib.berkeley.edu) NARA

# to do

set up to run as service.

Friendlier URL alias?

changing search to be full text.




