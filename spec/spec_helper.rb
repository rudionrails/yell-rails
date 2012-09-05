$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'yell/rails'
require 'rails/all'

require 'rspec'
require 'rr'

RSpec.configure do |config|
  config.mock_framework = :rr

  private

  def fixture_path
    File.dirname(__FILE__) + '/fixtures'
  end

end

