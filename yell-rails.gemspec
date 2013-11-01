# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "yell-rails"
  s.version     = "2.0.0.pre"
  s.authors     = ["Rudolf Schmidt"]

  s.homepage    = "http://rudionrails.github.com/yell"
  s.summary     = %q{Yell - Your Extensible Logging Library for Rails}
  s.description = %q{Yell - Your Extensible Logging Library. Define multiple adapters, various log level combinations or message formatting options like you've never done before}

  s.rubyforge_project = "yell"

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.require_paths = ["lib"]

  s.add_runtime_dependency "yell", ">= 2.0.0.pre"
  s.add_runtime_dependency "rails", ">= 3"
end

