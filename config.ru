# config.ru

require 'sinatra'

set :run, false
set :environment, ENV['RACK_ENV'] || 'development'

require './application'
run Sinatra::Application
