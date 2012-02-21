require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'
require 'bundler'

Bundler::GemHelper.install_tasks :name => 'rspec-on-rails-matchers'

desc "Run specs"
RSpec::Core::RakeTask.new

task :default => :spec

require File.expand_path(File.dirname(__FILE__) + "/lib/rspec_on_rails_matchers")
require "rspec_on_rails_matchers/version"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    File.open(File.expand_path(File.dirname(__FILE__) + "/VERSION"), "w") do |f|
      f << RspecOnRailsMatchers::VERSION
    end
    
    gem.name        = "rspec-on-rails-matchers"
    gem.authors     = ["Scott Taylor", "Stephen Schor", "Josh Knowles"]
    gem.email       = ["scott@railsnewbie.com", "stephen@eastmedia.com"]
    gem.homepage    = "http://github.com/smtlaissezfaire/rspec-on-rails-matchers"
    gem.summary     = %q{Rspec on rails matchers}
    gem.description = %q{Josh Knowles rspec-on-rails-matchers, upgraded for Rails 3+.}
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rspec-on-rails-matchers #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
