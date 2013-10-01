require 'rubygems'
require 'bundler/setup'

$:.unshift File.expand_path('../../', __FILE__)

require 'active_record'

spec = YAML.load(ERB.new(File.read('config/database.yml')).result)
ActiveRecord::Base.establish_connection(spec['test'])

# Devise
require 'devise'
require 'devise/orm/active_record'

require 'shoulda-matchers'

# EnumerateIt
require 'enumerate_it'

class ActiveRecord::Base
  extend EnumerateIt
end

Dir['app/enumerations/*.rb'].each do |file|
  require File.expand_path(file)
end
