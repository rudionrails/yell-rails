require "bundler/gem_tasks"

# RSpec
begin
  require 'rspec/core/rake_task'

  desc "Run specs"
  RSpec::Core::RakeTask.new do |t|
    t.rspec_opts = %w(--color --format progress --order random)
    # t.ruby_opts = %w(-w)
  end
rescue LoadError
  task :spec do
    abort "`gem install rspec` in order to run tests"
  end
end

task :default => :spec

