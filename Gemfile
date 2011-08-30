# Edit this Gemfile to bundle your application's dependencies.

require 'rubygems'
require 'mongo'
source 'http://gemcutter.org'

gem "rails", "3.0.10"
gem "mongo_mapper"

if defined?(BSON_C)
  warn 'YAY'
end

group "development", "test" do
  gem 'rspec-rails', ">= 2.0.0"
  gem 'cucumber-rails', ">= 0.3.2"
  gem 'webrat', ">= 0.7.2"
  gem 'database_cleaner', ">= 0.5.3"
  gem 'selenium-webdriver'
end


## Bundle edge rails:
# gem "rails", :git => "git://github.com/rails/rails.git"

# ActiveRecord requires a database adapter. By default,
# Rails has selected sqlite3.
# gem "sqlite3-ruby", :require => "sqlite3"

## Bundle the gems you use:
# gem "bj"
# gem "hpricot", "0.6"
# gem "sqlite3-ruby", :require => "sqlite3"
# gem "aws-s3", :require => "aws/s3"

## Bundle gems used only in certain environments:
# gem "rspec", :group => :test
# group :test do
#   gem "webrat"
# end
