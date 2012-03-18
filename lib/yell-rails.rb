require 'yell'

module Yell
  module Rails

    class Railtie < ::Rails::Railtie

      initializer 'yell.logger', :grop => :all, :before => :initialize_logger do |app|
        # behave like the standard rails logger and create the log dir
        path = app.config.paths["log"].first
        unless File.exist? File.dirname path
          FileUtils.mkdir_p File.dirname path
        end

        # init Yell
        app.config.logger = Yell.new( path, 
          :colorize => app.config.colorize_logging, 
          :level => app.config.log_level 
        )
      end

    end

  end
end
