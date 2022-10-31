# Smart Pension
A take home test for Smart Pension. The Parser class is designed to parse a web log and provide statistics on both the most popular pages in the specified log and the most unique pages, considered a combination of the page and the source requests IP address. The rspec test suite is provided with 6 tests extracted from the original spec.

To run the log parsed from the command line use the launch script

> `./launch.rb webserver.log`

To run the test suite use rspec:

> `bundle exec rspec . -f d`

