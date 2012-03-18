require 'yell'

module Yell
  module Rails

    module Railtie < Rails::Railtie
      config.logger = Yell.new

    end

  end
end
