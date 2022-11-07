require 'bundler/setup'
require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get '/' do
    '<h1>Hello world</h1>'
end

get '/llama' do
    '<img src=\'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Alpaca_%2831562329701%29.jpg/1920px-Alpaca_%2831562329701%29.jpg\'/>'
end

get '/template' do
    erb :template, :layout => :layout
end
