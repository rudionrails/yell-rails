# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "yell-rails"
  s.version     = "0.10.0.1"
  s.authors     = ["Rudolf Schmidt"]

  s.homepage    = "http://rudionrails.github.com/yell"
  s.summary     = %q{yell-rails}
  s.description = %q{Yell for Rails}

  s.rubyforge_project = "yell"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "yell", ">= 0.13.2"

  s.add_development_dependency "rails", ">= 3.0.0"
end

