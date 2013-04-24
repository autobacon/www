source "http://rubygems.org"
ruby "1.9.3"

gem "sinatra",                    "~> 1.3"
gem "rack",                       "~> 1.5.2"
                   
# generic app stuff               
gem "herbie",                     "~> 0.1.3"
                                  
# assets stuff
gem 'rake-pipeline',              github: 'livingsocial/rake-pipeline'
gem 'rake-pipeline-web-filters',  github: 'wycats/rake-pipeline-web-filters'
gem "sass",                       "~> 3.2"
gem "compass"
gem "yui-compressor"
gem "uglifier",                   "~> 1.3"

group :development do
  gem "listen",                   "~> 0.6"
  gem "foreman",                  "~> 0.61"
  gem "rerun"
  gem "guard"
  gem "terminal-notifier"
  gem "terminal-notifier-guard"
  gem "dm-mysql-adapter"
  gem "rb-fsevent",               "~> 0.9.1"
  gem "execjs",                   "~> 1.4"
  gem "awesome_print"
end

group :production do
  gem "unicorn"
end