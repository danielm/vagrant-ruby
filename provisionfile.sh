#!/bin/bash

RUBY_VERSION="2.2.2"

#
# Install our packages
#
apt-get -y update
apt-get -y install git nodejs curl git curl unzip

#
# Install rvm
#
if ! type rvm >/dev/null 2>&1; then
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L https://get.rvm.io | bash -s stable
  source /etc/profile.d/rvm.sh

  # Add vagrant's users to rvm group
  usermod -a -G rvm vagrant
  usermod -a -G rvm ubuntu
fi

#
# Install ruby
#
if ! rvm list rubies ruby | grep ruby-${RUBY_VERSION}; then
  rvm install ${RUBY_VERSION}
fi

#
# Set our Ruby version
#
rvm --default use ${RUBY_VERSION}

#
# Install our gems
#
gem install bundler

#
# Add more here ... !
#