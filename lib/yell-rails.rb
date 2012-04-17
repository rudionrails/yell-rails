# encoding: utf-8

require 'rails'
require 'yell'

require File.dirname(__FILE__) + '/yell/rails'

module Yell #:nodoc:
  module Rails #:nodoc:

    class Railtie < ::Rails::Railtie
      config.yell = Yell::Rails.configuration

      initializer 'yell.logger', :group => :all, :before => :initialize_logger do |app|
        yell = Yell::Rails.configuration

        # behave like the standard rails logger and create the log dir
        filename = app.config.paths["log"].first
        path     = File.dirname(filename)

        unless File.exist? path
          FileUtils.mkdir_p path
        end

        # add default adapter when none set
        if yell.adapters.empty?
            options = { :colorize => yell.colorize || app.config.colorize_logging }

          if ['staging', 'production'].include?( ::Rails.env )
            yell.adapter :datefile, filename, options.merge( :level => Yell.level.lt(:error) )
            yell.adapter :datefile, path + "/error.log", options.merge( :level => Yell.level.gte(:error) )
          else
            yell.adapter :file, filename, options
          end
        end

        # init Yell
        app.config.logger = Yell.new do |logger|
          logger.level = app.config.yell.level || app.config.log_level

          app.config.yell.adapters.each { |args, block| logger.adapter(*args, &block) }
        end
      end

    end

  end
end
