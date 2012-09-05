# encoding: utf-8

require 'rails'
require 'yell'

module Yell #:nodoc:
  class Railtie < ::Rails::Railtie

    initializer 'yell.logger', :group => :all, :before => :initialize_logger do |app|
      # behave like the standard rails logger and create the log dir
      filename = app.config.paths["log"].first
      path     = File.dirname(filename)

      unless File.exist? path
        FileUtils.mkdir_p path
      end

      # fetch yell config
      config_file = Rails.root.join( 'config', 'yell.yml' )

      # add to repository
      Yell['rails'] = config_file.file? ? Yell.load!(config_file) : Yell.new

      # add logger
      app.config.logger = Yell['rails']
    end

    # Warn if yell.yml is not present.
    initializer "yell.warnings" do |app|
      app.config.after_initialize do
        unless Rails.root.join( "config", "yell.yml" ).file?
          puts <<-EOS

** Yell config not found - initialized with default options **
Create a config file at 'config/yell.yml' or generate one:
  rails generate yell:install

          EOS
        end
      end
    end

  end

end
