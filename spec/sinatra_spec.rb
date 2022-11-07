ENV['APP_ENV'] = 'test'

require './sinatra'
require 'bundler/setup'
require 'rspec'
require 'rack/test'

RSpec.configure do |conf|
    conf.include Rack::Test::Methods
end

RSpec.describe 'Hello Llama App' do
    include Rack::Test::Methods
  
    def app
      Sinatra::Application
    end
  
    it "says hello" do
        get '/'
        expect(last_response).to be_ok
        expect(last_response.body).to eq('<h1>Hello world</h1>\n<h1>Hello world</h1>')
    end

    it "displays image" do
        get '/llama'
        expect(last_response).to be_ok
        expect(last_response.body).to eq('<img src=\'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Alpaca_%2831562329701%29.jpg/1920px-Alpaca_%2831562329701%29.jpg\'/>')
    end

    it 'displays title' do
        get '/blog'
        expect(last_response).to be_ok
        expect(last_response.body)
    end
end