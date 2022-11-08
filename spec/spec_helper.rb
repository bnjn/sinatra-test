ENV['APP_ENV'] = 'test'

require 'rspec'
require 'rack/test'
require 'rspec/expectations'
require 'capybara/rspec'
require 'capybara/dsl'

RSpec.configure do |config|
  include Rack::Test::Methods
  config.include Capybara::DSL
  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app

# Capybara.default_driver = :selenium_chrome_headless
