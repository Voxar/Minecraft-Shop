require 'rubygems'
require 'sinatra'
require 'erb'
require 'helpers'
require 'json'
require 'prettyprint'
require 'config'
get '/' do
  erb :index
end


post '/order' do 
  items = JSON.load(params["items"])
  username = params["username"]
  
  puts "Placing order for #{username}:"
  items.each do |item|
    id = item["id"]
    count = item["count"]
    puts "  #{count}x#{id}"
    `echo 'give #{username} #{id} #{count}' >> #{PIPE_PATH}`
  end
  {:success=>true}.to_json
end