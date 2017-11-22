#
# File: app/config.ru
# 
# By: Daniel Morales <daniminas@gmail.com>
#
# Web: https://github.com/danielm/vagrant-ruby
#
# Licence: GPL/MIT
require 'sinatra'

set :run, false
set :environment, ENV['RACK_ENV'] || 'development'

require './main'
run Sinatra::Application
