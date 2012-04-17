# encoding: utf-8

module Yell #:nodoc:
  module Rails #:nodoc:

    class Config

      # Set the log level
      attr_accessor :level

      # Set whether to colorize the log message
      attr_accessor :colorize

      # fetch the adapters
      attr_accessor :adpters


      def initialize
        reset!
      end

      def reset!
        @level = nil
        @colorize = false

        @adapters = []
      end

      # Define an adapter to be passed to Yell upon rails initialization
      def adapter( *args, &block )
        @@adapters << [args, block]
      end

    end

  end
end
