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
  "I'm runnnin in Sinatra Version " + Sinatra::VERSION
end

get '/agent' do
  "<p> Your User Agent is:</>
   <p>#{request.env['HTTP_USER_AGENT']}:</p>"
end

get '/test' do
   "<p> Your User Agent is:</>"
   "<p>#{request.env['HTTP_USER_AGENT']}:</p>"
   "<p>Narcisus has been running for #{Time.now-time_start}</><p>Running since #{time_start} at the local server</>"
   "I'm runnnin in Sinatra Version " + Sinatra::VERSION
end
