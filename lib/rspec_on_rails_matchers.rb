require File.join(File.dirname(__FILE__), 'rspec_on_rails_matchers', 'version')

if !defined?(Rails) || Rails.env.test?
  require File.join(File.dirname(__FILE__), 'rspec_on_rails_matchers', 'observers')
  require File.join(File.dirname(__FILE__), 'rspec_on_rails_matchers', 'associations')
  require File.join(File.dirname(__FILE__), 'rspec_on_rails_matchers', 'validations')
  require File.join(File.dirname(__FILE__), 'rspec_on_rails_matchers', 'views')
end