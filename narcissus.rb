require 'sinatra'
require 'haml'
require 'sass'

# Define global variables
Time_start = Time.now

# Default route
get '/' do
  @ip = request.env['REMOTE_ADDR'].split(',').first
  haml:index
end

get '/stylesheets/global.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :global
end
