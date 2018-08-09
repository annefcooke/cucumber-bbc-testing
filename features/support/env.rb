require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec'
require_relative '../lib/bbc_site.rb'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.ignore_hidden_elements = true
  config.default_driver = :chrome
  config.app_host = 'https://www.bbc.co.uk'
end

World(BBCSite)
