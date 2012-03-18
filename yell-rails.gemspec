# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yell-rails/version"

Gem::Specification.new do |s|
  s.name        = "yell-rails"
  s.version     = Yell::Rails::VERSION
  s.authors     = ["Rudolf Schmidt"]
  s.homepage    = ""
  s.summary     = %q{Meta gem for yell usage with rails}
  s.description = %q{Use Yell conveniently with Rails with the logger already set to Yell}

  s.rubyforge_project = "yell-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "yell"
end
