require 'spec_helper'

RSpec.describe 'Hello Llama App' do
  
  xit 'says hello' do
    get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to eq('<h1>Hello world</h1>')
  end

    xit 'displays image' do
      get '/llamapic'
        expect(last_response).to be_ok
        expect(last_response.body).to eq('<img src=\'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Alpaca_%2831562329701%29.jpg/1920px-Alpaca_%2831562329701%29.jpg\'/>')
    end 
end
