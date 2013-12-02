require 'capybara/rspec'
require 'turnip/capybara'
require 'capybara-screenshot/rspec'

Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }

Capybara.default_driver = :webkit
