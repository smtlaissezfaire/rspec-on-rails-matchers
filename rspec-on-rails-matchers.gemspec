# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rspec_on_rails_matchers/version"

Gem::Specification.new do |s|
  s.name        = "rspec-on-rails-matchers"
  s.version     = RspecOnRailsMatchers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Scott Taylor", "Stephen Schor", "Josh Knowles"]
  s.email       = ["scott@railsnewbie.com", "stephen@eastmedia.com"]
  s.homepage    = "http://github.com/smtlaissezfaire/rspec-on-rails-matchers"
  s.summary     = %q{Rspec on rails matchers}
  s.description = %q{Josh Knowles rspec-on-rails-matchers, upgraded for Rails 3+.}

  s.add_development_dependency "rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end