#
# File: app/src/main.rb
# 
# By: Daniel Morales <daniminas@gmail.com>
#
# Web: https://github.com/danielm/vagrant-ruby
#
# Licence: GPL/MIT

require 'sinatra'

configure do
  set :show_exceptions, true

  # Binds to 0.0.0.0 to allow Vagrant port-forwarding from host OS.
  # Comment next line if not using Vagrant
  set :bind, '0.0.0.0'
end

get "/" do
  # Just print a message here, we arent going to implement nothing else here
  "It Works!"
end