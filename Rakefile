require 'rspec/core/rake_task'
require 'bundler'

Bundler::GemHelper.install_tasks :name => 'rspec-on-rails-matchers'

desc "Run specs"
RSpec::Core::RakeTask.new

task :default => :spec