# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "yell/rails/version"

Gem::Specification.new do |s|
  s.name        = "yell-rails"
  s.version     = Yell::Rails::VERSION
  s.authors     = ["Rudolf Schmidt"]

  s.homepage    = "http://rudionrails.github.com/yell"
  s.summary     = %q{yell-rails}
  s.description = %q{Yell for Rails}

  s.rubyforge_project = "yell"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "rails", "~> 3.0"
  s.add_runtime_dependency "yell", "~> 0.5"
end
