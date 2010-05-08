#!/usr/bin/env ruby 

require 'rubygems'
require 'sinatra'

# Define global variables
time_start = Time.now

# Default route
get '/' do
  "<p>Narcisus has been running for #{Time.now-time_start}</><p>Running since #{time_start} at the local server</>"
end

get '/about' do
  "I'm running on Version " + Sinatra::VERSION
end

