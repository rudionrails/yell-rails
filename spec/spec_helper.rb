$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'rails'
require 'yell-rails'

require 'rspec'
require 'rr'

require 'ostruct'

RSpec.configure do |config|
  config.mock_framework = :rr

  config.after do
    Dir[ fixture_path + "/*.log" ].each { |f| File.delete f }
  end

  private

  def fixture_path
    File.expand_path( "fixtures", File.dirname(__FILE__) )
  end

end

