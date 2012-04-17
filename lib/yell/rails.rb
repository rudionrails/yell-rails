# encoding: utf-8

require File.dirname(__FILE__) + '/rails/config'

module Yell #:nodoc:
  module Rails #:nodoc:

    mattr_accessor :configuration
    @@configuration = Yell::Rails::Config.new

  end
end
