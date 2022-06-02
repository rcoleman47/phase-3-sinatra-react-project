# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['SINATRA_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require "sinatra/activerecord"
set :database, {adapter: "sqlite3", :database => "db/#{ENV['SINATRA_ENV']}.sqlite"}

# Require in all files in 'app' directory
require_all 'app'
