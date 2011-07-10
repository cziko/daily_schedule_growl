# In order to start execute: ruby dsg.rb start
# In order to stop ruby dsg.rb stop
require 'rubygems'
require 'daemons'
Daemons.run('daily_schedule_growl.rb')
