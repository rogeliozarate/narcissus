require 'sinatra'
require 'haml'
require 'sass'

# Define global variables
Time_start = Time.now

# Default route
get '/' do
  @ip = @env['REMOTE_ADDR']
    haml:index
end

get '/stylesheets/global.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :global
end
