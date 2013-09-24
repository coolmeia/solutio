source 'https://rubygems.org'

gem 'rails', '4.0.0'

gem 'pg'

# heroku webserver
gem 'unicorn'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'

gem 'anjlab-bootstrap-rails', '~> 3.0.0.2', :require => 'bootstrap-rails'

gem 'jbuilder', '~> 1.2'

gem 'simple_form', git: 'https://github.com/plataformatec/simple_form.git'
gem 'responders', git: 'https://github.com/plataformatec/responders.git'
gem 'devise'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'factory_girl_rails'

group :production do
  gem 'rails_12factor', '~> 0.0.2'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'pry'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'turnip'
end
