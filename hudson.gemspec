# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hudson/version"

Gem::Specification.new do |s|
  s.name        = "hudson"
  s.version     = Hudson::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Charles Lowell", "Nic Williams"]
  s.email       = ["cowboyd@thefrontside.net", "drnicwilliams@gmail.com"]
  s.homepage    = "http://github.com/cowboyd/hudson.rb"
  s.summary     = %q{Painless Continuous Integration with Hudson Server}
  s.description = %q{A suite of utilities for bringing continous integration to your projects (not the other way around) with hudson CI}

  s.rubyforge_project = "hudson"

  s.files         = `git ls-files`.split("\n")

  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "jenkins"
end
