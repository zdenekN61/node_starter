$LOAD_PATH << 'lib'
require 'bundler/setup'
require 'node_starter'
require 'node_starter/queue_subscribe'

NodeStarter.setup

File.write('.pid', "#{Process.pid}")

subscriber = NodeStarter::QueueSubscribe.new
subscriber.start_listening
