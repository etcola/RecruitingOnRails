require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'gizmo'
require 'ostruct'

Capybara.default_driver = :selenium
Capybara.default_wait_time = 5
Capybara.default_selector= :css
Capybara::Selenium::Driver::DEFAULT_OPTIONS[:resynchronize] = false
Capybara.ignore_hidden_elements = false
Capybara.app_host = "http://localhost:3000/"


World(Capybara)
World(Gizmo::Helpers)

Gizmo.configure do |config|
  config.mixin_dir = File.dirname(__FILE__) + '../pages'
end