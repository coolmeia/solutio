require 'capybara/rspec'
require 'turnip/capybara'

Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }

Capybara.javascript_driver = :webkit
