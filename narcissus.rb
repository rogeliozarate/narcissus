require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'sass'

# Define global variables
Time_start = Time.now

# Default route
get '/' do
  @ip = request.ip #request.env['HTTP_X_REAL_IP']|| request.env['REMOTE_ADDR']
  @request_time = Time.now
  haml:index
end

get '/ip' do
  @ip = request.env['HTTP_X_REAL_IP']|| request.env['REMOTE_ADDR']
  #{@ip}
end


get '/stylesheets/global.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :global
end
